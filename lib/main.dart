import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:komengtech_web/screens/home_screen.dart';
import 'controllers/app_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AppController>(AppController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KomengTech',
      home: HomeScreen(),
    );
  }
}
