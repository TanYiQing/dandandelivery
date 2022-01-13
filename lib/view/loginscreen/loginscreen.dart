import 'package:dandandelivery/view/loginscreen/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          Container(
              height: screenHeight / 2.1,
              width: screenWidth / 2,
              child: Image.asset('asset/images/avatar.png')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "...",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.delivery_dining,
                size: screenWidth / 5,
              ),
            ],
          ),
          Text("DAN DAN DELIVERY",
              style: GoogleFonts.luckiestGuy(
                  fontSize: screenWidth / 10,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                  height: screenHeight / 3.0,
                  width: screenWidth / 1.1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Login",
                            style: GoogleFonts.concertOne(fontSize: 40)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GetBuilder<LoginController>(
                            init: LoginController(),
                            builder: (controller) {
                              return Container(
                                  child: TextField(
                                controller: controller.emailController,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    icon: Icon(Icons.email)),
                              ));
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GetBuilder<LoginController>(
                            init: LoginController(),
                            builder: (controller) {
                              return Container(
                                  child: TextField(
                                      controller: controller.passwordController,
                                      decoration: InputDecoration(
                                          labelText: 'Password',
                                          icon: Icon(Icons.lock))));
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red, elevation: 10),
                              onPressed: () {
                                Get.offAllNamed('/bottombar');
                              },
                              child: Text("Cancel"),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GetBuilder<LoginController>(builder: (_) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue[200], elevation: 10),
                                  onPressed: () {_.clickLogin();},
                                  child: Text("Login"),
                                );
                              })),
                        ],
                      )
                    ],
                  )),
            ),
          )
        ])),
      ),
    );
  }
}
