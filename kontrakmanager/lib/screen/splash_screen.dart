import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kontrakmanager/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (controller) {
          controller.preFunction(
            () {
              Get.offNamed("/home_screen");
            },
          );
          return Scaffold(
            body: ColoredBox(
              color: Colors.black87,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    "KONTRAKAN MANAGER",
                    style: GoogleFonts.caveatBrush(fontSize: 32, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
