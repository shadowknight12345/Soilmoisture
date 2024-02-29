import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/home_controller.dart';
import 'package:soil_moisture_app/water_log_model.dart';

class WateringHistory extends GetView<HomeController> {
  const WateringHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 0.4,
      child: Obx(
        () {
          if (controller.moistureLevelController.items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: controller.waterLogController.items.length,
            itemBuilder: (BuildContext context, int index) {
              final WateringLogModel item =
                  controller.waterLogController.items[index];
              return SizedBox(
                width: Get.width,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.status),
                      Text(item.createdAt()),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
