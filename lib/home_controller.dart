import 'package:get/get.dart';
import 'package:soil_moisture_app/moisture_level_controller.dart';
import 'package:soil_moisture_app/water_log_controller.dart';

class HomeController extends GetxController {
  final MoistureLevelController moistureLevelController =
      Get.put(MoistureLevelController());
  final WaterLogController waterLogController = Get.put(WaterLogController());

  String fetchDayOfWeek() {
    // Get the current date and time
    DateTime now = DateTime.now();
    // Use the weekday property to get the day of the week (0 for Monday, 1 for Tuesday, ..., 6 for Sunday)
    int dayIndex = now.weekday -
        1; // Adjusted to match the index (0 for Monday, ..., 6 for Sunday)
    List<String> daysOfWeek = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];

    return daysOfWeek[dayIndex];
  }

  String formatDate() {
    DateTime date = DateTime.now();
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
