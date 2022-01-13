import 'package:dandandelivery/view/loginscreen/logincontroller.dart';
import 'package:dandandelivery/widget/bottomnavibar/bottomnavibarcontroller.dart';
import 'package:get/get.dart';

class BottomNaviBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNaviBarController>(()=>BottomNaviBarController());
    Get.put(LoginController());
    
  }
}