import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  void onInit() {
    super.onInit();
    loadsplash();
  }

  void loadsplash() {
    Timer(Duration(seconds: 4), () {
      Get.offAllNamed('/bottombar');
    });
  }
}
