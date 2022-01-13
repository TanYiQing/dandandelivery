import 'package:dandandelivery/view/splashscreen/splashcontroller.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Column(
          children: [
            GestureDetector(onTap: (){Get.toNamed('/home');},
              child: Container(
                  height: screenHeight / 2,
                  width: screenWidth / 2,
                  child: Image.asset('asset/images/avatar.png')),
            ),
            Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText("I'm coming",
                      textStyle: GoogleFonts.luckiestGuy(fontSize: 40)),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
