import 'package:get/get.dart';

class SplashController extends GetxController {
  void preFunction(Function() navigateToHome) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        navigateToHome();
      },
    );
  }
}
