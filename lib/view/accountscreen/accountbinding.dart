import 'package:dandandelivery/view/loginscreen/logincontroller.dart';
import 'package:get/get.dart';

class AccountController extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
