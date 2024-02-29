// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/water_log_model.dart';

class WaterLogController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  RxInt buttonLabel = 0.obs;
  final RxList<WateringLogModel> items = RxList<WateringLogModel>();
  String buttonID = "D6jbLfLZy0nKGbY25ewf";

  @override
  void onInit() {
    _firestore
        .collection('water_logs')
        .orderBy('date', descending: true)
        .snapshots()
        .listen((snapshot) {
      snapshot.docs.map((doc) => print(doc));
      items.assignAll(
          snapshot.docs.map((doc) => WateringLogModel.fromFirestore(doc)));
    });
    super.onInit();
  }

  Future<void> updateButtonStatus(bool status) async {
    try {
      await _firestore.collection('water_pump_status').doc(buttonID).update({
        'watering_plant': status,
      });
    } catch (e) {
      print('Error updating button status in Firestore: $e');
    }
  }

  Stream<bool> getButtonStatusStream() {
    return _firestore
        .collection('water_pump_status')
        .doc(buttonID)
        .snapshots()
        .map((snapshot) {
      final data = snapshot.data();
      if (data == null || !data.containsKey('watering_plant')) {
        return false;
      }
      return data['watering_plant'] ?? false;
    });
  }
}
