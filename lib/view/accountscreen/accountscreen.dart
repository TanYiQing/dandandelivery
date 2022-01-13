import 'package:dandandelivery/model/user.dart';
import 'package:dandandelivery/theme/themecontroller.dart';
import 'package:dandandelivery/view/accountscreen/accountcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  ThemeController themecontroller = Get.put(ThemeController());
User user=Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account'.tr,
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.pink),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name".tr),
                    ),
                  ],
                ),
                Text(user.fname.toString()+" "+user.lname.toString())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.red),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email".tr),
                    ),
                  ],
                ),
                Text(user.email.toString())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.dark_mode, color: Colors.amber),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Dark Mode".tr),
                    ),
                  ],
                ),
                Obx(() {
                  return Switch(
                      value: themecontroller.isSwitching.value,
                      onChanged: (value) {
                        themecontroller.toggleSwitch();
                      });
                })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Divider(
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/language');
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.language, color: Colors.blue),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Language".tr),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GetX<AccountController>(
                          init: AccountController(),
                          builder: (controller) {
                            controller.changeLanguage();
                            return Text(controller.language.value);
                          }),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              AccountController().clickLogout();
            },
            child: ListTile(
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.logout, color: Colors.black),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Logout".tr),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
