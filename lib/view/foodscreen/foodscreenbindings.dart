import 'package:dandandelivery/controller/productcontroller.dart';
import 'package:get/get.dart';

class FoodScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
  }
}
