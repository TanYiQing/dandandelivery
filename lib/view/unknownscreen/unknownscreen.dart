import 'package:flutter/material.dart';
import 'package:get/get.dart';
 

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Center(
          child: Column(
            children: [
              Container(
                child: Text('Oops, this is not your fault :('),
              ),
              ElevatedButton(onPressed: (){Get.offAllNamed('/home');}, child:Text("Back to Home"))
            ],
          ),
        
      ),
    );
  }
}