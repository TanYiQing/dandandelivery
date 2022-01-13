import 'package:dandandelivery/model/user.dart';
import 'package:dandandelivery/view/accountscreen/accountscreen.dart';
import 'package:dandandelivery/view/homescreen/homescreen.dart';
import 'package:dandandelivery/widget/bottomnavibar/bottomnavibarcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNaviBar extends StatelessWidget {
 // User user = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNaviBarController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: [HomeScreen(), AccountScreen()],
        )),
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTab,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'.tr),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Account'.tr),
            ]),
      );
    });
  }
}
