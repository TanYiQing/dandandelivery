import 'package:dandandelivery/controller/productcontroller.dart';
import 'package:dandandelivery/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  ProductTile(this.product);
  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    bool _isgridview = true;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: GestureDetector(
        onTap: () {
          // _viewProduct(index);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: (_isgridview == true)
                      ? screenHeight / 5
                      : screenHeight / 2,
                  width: double.infinity,
                  child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl:
                          "https://hubbuddies.com/270607/snackeverywhere/images/product/${product.product_id}.png")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text(
                  productController
                      .checkProductName(product.product_name.toString()),
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: (product.instock_qtysmall == "0" &&
                        product.instock_qtylarge == "0")
                    ? Text("SOLD OUT",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold))
                    : Row(
                        children: [
                          Text("RM ", style: TextStyle(fontSize: 12)),
                          Text(
                            product.product_small_price.toString(),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.amber[800],
                                fontWeight: FontWeight.bold),
                          ),
                          (product.product_large_price == "0.00")
                              ? Text("")
                              : Row(
                                  children: [
                                    Text(" ~ "),
                                    Text("RM ", style: TextStyle(fontSize: 12)),
                                    Text(product.product_large_price.toString(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.amber[800],
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                        ],
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
