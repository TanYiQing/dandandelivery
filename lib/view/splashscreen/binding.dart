import 'package:dandandelivery/view/splashscreen/splashcontroller.dart';
import 'package:dandandelivery/view/splashscreen/splashscreen.dart';
import 'package:get/get.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
