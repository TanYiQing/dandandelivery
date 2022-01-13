import 'package:dandandelivery/model/product.dart';
import 'package:dandandelivery/model/user.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static final appData = GetStorage();
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/dandandelivery/php/loadproduct.php'),
        body: {"product_cat": "All"});

    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsonString = response.body;
        print("IN remoteservices" + jsonString);
        return productFromJson(jsonString);
      }
    } else {
      throw Exception('Failed to load Categories from API');
    }
  }

  //User Remote Services
  static Future<User?> fetchUser(String email, password) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/dandandelivery/php/loginuser.php'),
        body: {"email": email, "password": password});
    print(response.body);
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        print("Hello" + response.body);
        appData.write("isAuthenticated", false);
        Get.snackbar("Opps", "Wrong username or password...");
        Get.toNamed('/login');
        return null;
      } else {
        appData.write("Login", true);
        appData.write("isAuthenticated", true);
        appData.write("email", email);
        appData.write("password", password);

        List userdata = response.body.split('#');
        User user = new User(
          fname: userdata[1],
          lname: userdata[2],
          email: userdata[3],
          dateregister: userdata[4],
          cqty: userdata[5],
        );
        return user;
      }
    } else {
      Get.snackbar("Opps", "Wrong username or password...");
      return null;
    }
  }
}
