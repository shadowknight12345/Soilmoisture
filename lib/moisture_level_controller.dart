import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/moisture_level_model.dart';

class MoistureLevelController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final RxList<MoistureLevelModel> items = RxList<MoistureLevelModel>();

  final RxInt moistureCurrentLevel = 40.obs;
  final RxString moistureCurrentTag = "Normal".obs;

  final RxList<FlSpot> currentListChart = RxList<FlSpot>([]).obs();

  @override
  void onInit() {
    _firestore
        .collection('moisture_level')
        .orderBy('date', descending: true)
        .snapshots()
        .listen((snapshot) {
      snapshot.docs.map((doc) => print(doc));
      items.assignAll(
          snapshot.docs.map((doc) => MoistureLevelModel.fromFirestore(doc)));
    });
    getLatestItemsStream().listen((moistureData) {
      currentListChart.value = moistureData;
      currentListChart.refresh();
    });
    super.onInit();
  }

  Stream<List<FlSpot>> getLatestItemsStream() {
    return _firestore
        .collection('moisture_level')
        .orderBy('date', descending: true)
        .limit(10)
        .snapshots()
        .map((snapshot) {
      double index = 1;
      return snapshot.docs.map((doc) {
        final moistureLevel =
            FlSpot(index, double.parse(doc.data()['level'].toString()));
        index++;
        return moistureLevel;
      }).toList();
    });
  }
}
