import 'package:flutter/material.dart';
import 'package:soil_moisture_app/app_bar.dart';
import 'package:soil_moisture_app/home_controller.dart';
import 'package:soil_moisture_app/logs.dart';
import 'package:soil_moisture_app/moisture_widget.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/trigger_water_plant_button.dart';

class Dashboard extends GetView<HomeController> {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 8, 142, 11),
        ),
        body: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(top: 0, child: AppBarWidget()),
              Positioned(top: 80, child: MoistureWidget()),
              Positioned(top: 340, child: Logs()),
              Positioned(
                bottom: 0,
                child: TriggerWaterPlantButton(),
              )
            ],
          ),
        ));
  }
}
