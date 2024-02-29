import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soil_moisture_app/dashboard.dart';
import 'package:soil_moisture_app/guide.dart';
import 'package:soil_moisture_app/home_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetMaterialApp(
      title: 'Soil Moisture Monitoring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 8, 142, 11)),
        useMaterial3: true,
      ),
      home: const Dashboard(),
      getPages: [
        GetPage(name: '/', page: () => const Dashboard()),
        GetPage(name: '/guide', page: () => const Guide()),
      ],
    );
  }
}
