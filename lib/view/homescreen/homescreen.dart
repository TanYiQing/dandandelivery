import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Dan Dan Delivery  ',
                style: GoogleFonts.luckiestGuy(fontSize: 25)),
            Icon(
              Icons.delivery_dining,
              size: 40,
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              //color: Colors.purple[50],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: screenHeight,
          child: Container(
            height: screenHeight,
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              padding: EdgeInsets.all(0),
              staggeredTiles: [
                StaggeredTile.count(4, 1),
                StaggeredTile.count(4, 0.5),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 2),
                StaggeredTile.count(2, 2),
              ],
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: screenWidth / 2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'asset/images/money.png',
                            width: screenWidth / 10,
                          ),
                          Text(
                            "100",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                    ),
                    Container(
                      width: screenWidth / 2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'asset/images/reward.png',
                            width: screenWidth / 10,
                          ),
                          Text(
                            "1",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Activities'.tr,
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Icon(Icons.local_activity)
                    ],
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/food');
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image.asset(
                          'asset/images/food.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/dating');
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: Image.asset(
                            'asset/images/dating.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/movie');
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: Image.asset(
                            'asset/images/cinema.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/car');
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: Image.asset(
                            'asset/images/car.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_basket_outlined,
                )
              ],
            ),
          ),
          onPressed: () {
            Get.toNamed('/login');
          }),
    );
  }
}
