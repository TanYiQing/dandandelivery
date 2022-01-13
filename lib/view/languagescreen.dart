import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageScreen extends StatelessWidget {
  var languageStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              child: Icon(Icons.arrow_back_ios),
              onTap: () {
                Get.back();
              }),
          title: Text('Language'),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                var locale = Locale('en', 'US');
                Get.updateLocale(locale);
                Get.back();
                print(locale);
                languageStorage.write("language", locale.toString());
              },
              title: Text("English"),
            ),
            ListTile(
              onTap: () {
                var locale = Locale('zh', 'Hans');
                Get.updateLocale(locale);
                Get.back();
                print(locale);
                languageStorage.write("language", locale.toString());
              },
              title: Text("简体中文"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Divider(
                color: Colors.black,
              ),
            )
          ],
        ));
  }
}
