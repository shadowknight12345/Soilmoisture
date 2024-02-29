import 'package:cloud_firestore/cloud_firestore.dart';

class WateringLogModel {
  final String id;
  final String status;
  final DateTime date;

  WateringLogModel(
      {required this.id, required this.status, required this.date});

  factory WateringLogModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return WateringLogModel(
      id: doc.id,
      status: data['status'],
      date: (data['date'] as Timestamp).toDate(),
    );
  }

  String createdAt() {
    // Define the month names
    List<String> monthNames = [
      '', // Placeholder for indexing from 1
      'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December'
    ];

    // Extract day, month, and year from the current date
    int day = date.day;
    int month = date.month;
    int year = date.year;

    // Construct the formatted date string
    String formattedDate = '$day';
    // Add the appropriate suffix for the day
    if (day == 1 || day == 21 || day == 31) {
      formattedDate += 'st';
    } else if (day == 2 || day == 22) {
      formattedDate += 'nd';
    } else if (day == 3 || day == 23) {
      formattedDate += 'rd';
    } else {
      formattedDate += 'th';
    }
    formattedDate += ' ${monthNames[month]}, $year';

    return formattedDate;
  }
}
