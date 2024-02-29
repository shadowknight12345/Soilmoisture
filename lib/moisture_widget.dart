import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/home_controller.dart';

class MoistureWidget extends GetView<HomeController> {
  const MoistureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Obx(
                          () => Text(
                              controller.moistureLevelController
                                  .moistureCurrentTag.value
                                  .toUpperCase(),
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 24, 121, 5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(width: 10),
                        Obx(
                          () => Text(
                              controller.moistureLevelController
                                  .moistureCurrentLevel.value
                                  .toString(),
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 24, 121, 5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        controller.fetchDayOfWeek(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color.fromARGB(255, 8, 142, 11)),
                      ),
                      Text(
                        controller.formatDate(),
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: SizedBox(
                width: Get.width,
                height: 180,
                child: Obx(
                  () => LineChart(
                    LineChartData(
                      minY: 0,
                      maxY: 300,
                      borderData: FlBorderData(
                          border: const Border(
                              top: BorderSide.none,
                              left: BorderSide(width: 1, color: Colors.black54),
                              bottom:
                                  BorderSide(width: 1, color: Colors.black54))),
                      gridData: const FlGridData(
                          horizontalInterval: 30,
                          show: true,
                          drawVerticalLine: true,
                          drawHorizontalLine: true),
                      titlesData: const FlTitlesData(
                          topTitles: AxisTitles(drawBelowEverything: false),
                          bottomTitles: AxisTitles(drawBelowEverything: false),
                          rightTitles: AxisTitles(drawBelowEverything: true),
                          leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  reservedSize: 40,
                                  interval: 30,
                                  showTitles: true),
                              axisNameSize: 14,
                              drawBelowEverything: true)),
                      lineBarsData: [
                        LineChartBarData(
                          color: const Color.fromARGB(255, 40, 62, 2),
                          spots: controller
                              .moistureLevelController.currentListChart.value,
                          isCurved: true,
                          belowBarData: BarAreaData(
                              show: true,
                              gradient: const LinearGradient(colors: [
                                Colors.green,
                                Colors.lightGreen,
                              ])),
                          dotData: const FlDotData(show: false),
                          gradient: const LinearGradient(
                              colors: [Colors.green, Colors.lightGreen]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
