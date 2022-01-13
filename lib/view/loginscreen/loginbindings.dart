import 'package:dandandelivery/view/loginscreen/logincontroller.dart';
import 'package:get/get.dart';

class LoginBingdings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    // Get.put(LoginController());
  }

}