import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/moisture_level.dart';
import 'package:soil_moisture_app/watering_logs.dart';

class Logs extends StatelessWidget {
  const Logs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.4,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Moisture Level'),
                Tab(text: 'Watering Logs'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: MoistureLevel(),
              ),
              Center(
                child: WateringHistory(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
