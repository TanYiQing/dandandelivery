import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isSwitching = false.obs;

  void toggleSwitch() {
    isSwitching.value = !isSwitching.value;
    print(isSwitching.value);
    if (isSwitching.value == false) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.dark);
    }
  }
}
