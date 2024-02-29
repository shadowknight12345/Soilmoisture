import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/home_controller.dart';
import 'package:soil_moisture_app/moisture_level_model.dart';

class MoistureLevel extends GetView<HomeController> {
  const MoistureLevel({super.key});

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
              itemCount: controller.moistureLevelController.items.length,
              itemBuilder: (context, index) {
                final MoistureLevelModel item =
                    controller.moistureLevelController.items[index];
                return SizedBox(
                  width: Get.width,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.label),
                        Text('value: ${item.value.toString()}')
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
