import 'package:dandandelivery/model/product.dart';
import 'package:dandandelivery/services/remoteservices.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList =<Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }
  
  void fetchProducts() async{
    var products=await RemoteServices.fetchProducts();
    if(products !=null){
      productList.assignAll(products);
    }
  }

  String checkProductName(String productName) {
    if (productName.length < 15) {
      return productName;
    } else {
      return productName.substring(0, 15) + "...";
    }
  }
  
}
