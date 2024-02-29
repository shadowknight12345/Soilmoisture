import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/home_controller.dart';

class TriggerWaterPlantButton extends GetView<HomeController> {
  const TriggerWaterPlantButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 50,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 5.0, right: 20, bottom: 10.0),
        child: StreamBuilder<bool>(
            stream: controller.waterLogController.getButtonStatusStream(),
            initialData: false,
            builder: (context, snapshot) {
              final isWateringPlant = snapshot.data ?? false;

              return MaterialButton(
                color: isWateringPlant
                    ? const Color.fromARGB(255, 71, 156, 73)
                    : const Color.fromARGB(255, 8, 142, 11),
                onPressed: () {
                  controller.waterLogController.updateButtonStatus(true);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isWateringPlant
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 3))
                        : const SizedBox(),
                    isWateringPlant
                        ? const SizedBox(width: 10)
                        : const SizedBox(),
                    Text(
                      isWateringPlant ? 'Watering plant' : 'Water plant',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: isWateringPlant
                              ? FontStyle.italic
                              : FontStyle.normal),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
