import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 60,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/soil_moisture_logo.svg',
              width: 70,
              height: 50,
            ),
          ),
          const Positioned(
            top: 20,
            left: 70,
            child: Row(
              children: [
                Text(
                  'Soil',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 40, 62, 2)),
                ),
                Text(
                  'mo',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 8, 142, 11)),
                )
              ],
            ),
          ),
          Positioned(
              top: 20,
              right: 20,
              child: InkWell(
                onTap: () => Get.toNamed('/guide'),
                child: const Row(
                  children: [
                    Icon(Icons.menu_book_rounded,
                        color: Color.fromARGB(255, 8, 142, 11)),
                    SizedBox(width: 10),
                    Text('Guide',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 8, 142, 11)))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
