import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kontrakmanager/navigation/app_route.dart';
import 'package:kontrakmanager/screen/home_screen.dart';
import 'package:kontrakmanager/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kontrakan Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GetMaterialApp(
          initialRoute: AppRoute.splashScreen,
          getPages: [
            GetPage(name: AppRoute.splashScreen, page: () => SplashScreen()),
            GetPage(name: AppRoute.homeScreen, page: () => HomeScreen())
          ],
        ),
      ),
    );
  }
}
