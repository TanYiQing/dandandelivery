import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RouthAuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  final appData = GetStorage();

  @override
  RouteSettings? redirect(String? route) {
    if (appData.read("isAuthenticated") == true) {
      Get.offAllNamed('/home');
      Get.snackbar("Login Success", "Welcome to DanDan Delivery");
    } else {
      Future.delayed(
          Duration(seconds: 1),
          () => Get.snackbar("Login Required",
              "Please login with an account to access this page"));
      return RouteSettings(name: '/login');
    }
  }
}
