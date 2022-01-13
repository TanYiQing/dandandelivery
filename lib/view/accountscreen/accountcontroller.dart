import 'package:dandandelivery/view/loginscreen/logincontroller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AccountController extends GetxController {
  var appData = GetStorage();
  void onReady() {
    super.onReady();
    changeLanguage();
  }

  var languageStorage = GetStorage();
  var language = "English".obs;

  void changeLanguage() {
    if (languageStorage.read("language") == "en_US") {
      language.value = 'English';
      print("English Here");
    } else {
      language.value = '简体中文';
      print("Chinese Here");
    }
  }

  void clickLogout() {
    appData.write("login", false);
    appData.write("isAuthenticated", false);
    appData.write("password", null);
  }
}
