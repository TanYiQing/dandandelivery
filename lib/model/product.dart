// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product(
      {this.product_id, // ignore: non_constant_identifier_names
      this.product_name, // ignore: non_constant_identifier_names
      this.product_desc, // ignore: non_constant_identifier_names
      this.product_small_price, // ignore: non_constant_identifier_names
      this.product_small_qty, // ignore: non_constant_identifier_names
      this.product_large_price, // ignore: non_constant_identifier_names
      this.product_large_qty, // ignore: non_constant_identifier_names
      this.product_cat, // ignore: non_constant_identifier_names
      this.instock_qtysmall, // ignore: non_constant_identifier_names
      this.instock_qtylarge, // ignore: non_constant_identifier_names
      this.datePublished});

  String? product_id;
  String? product_name;
  String? product_desc;
  String? product_small_price;
  String? product_small_qty;
  String? product_large_price;
  String? product_large_qty;
  String? product_cat;
  String? instock_qtysmall;
  String? instock_qtylarge;
  String? datePublished;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        product_id: json["product_id"],
        product_name: json["product_name"],
        product_desc: json["product_desc"],
        product_small_price: json["product_small_price"],
        product_small_qty: json["product_small_qty"],
        product_large_price: json["product_large_price"],
        product_large_qty: json["product_large_qty"],
        product_cat: json["product_cat"],
        instock_qtysmall: json["instock_qtysmall"],
        instock_qtylarge: json["instock_qtylarge"],
        datePublished: json["datePublished"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": product_id,
        "product_name": product_name,
        "product_desc": product_desc,
        "product_small_price": product_small_price,
        "product_small_qty": product_small_qty,
        "product_large_price": product_large_price,
        "product_large_qty": product_large_qty,
        "product_cat": product_cat,
        "instock_qtysmall": instock_qtysmall,
        "instock_qtylarge": instock_qtylarge,
        "datePublished": datePublished,
      };
}
