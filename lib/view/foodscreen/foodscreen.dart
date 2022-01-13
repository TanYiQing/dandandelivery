import 'package:dandandelivery/controller/productcontroller.dart';
import 'package:dandandelivery/view/producttile/producttile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.offNamed('/bottombar');
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text('Food', style: GoogleFonts.luckiestGuy(fontSize: 30)),
      ),
      body: Column(
        children: [
          Container(
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  'asset/images/food.jpg',
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Order food you love',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
            child: GetX<ProductController>(
                init: Get.find<ProductController>(),
                builder: (_) {
                  return StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: _.productList.length,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      itemBuilder: (context, index) {
                        return ProductTile(_.productList[index]);
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1));
                }),
          )
        ],
      ),
    );
  }
}
