import 'package:dandandelivery/services/remoteservices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final appData = GetStorage();

  var email = '';
  var password = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var user;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    loadAccount();
    if (appData.read("Login") == true) {
      loginUser();
    }
  }

  void loadAccount() {
    String email = appData.read("email") ?? '';
    String password = appData.read("password") ?? '';

    emailController.text = email;
    passwordController.text = password;
  }

  Future<void> loginUser() async {
    user = await RemoteServices.fetchUser(
        emailController.text.toString(), passwordController.text.toString());
        // Get.offAllNamed('/bottombar');


  }

  void clickLogin() {
    
    RemoteServices.fetchUser(
        emailController.text.toString(), passwordController.text.toString());
     Get.offAllNamed('/bottombar', arguments: user);
    
  }
}
