import 'package:flutter/material.dart';

class CartItem {
  String? title;
  String? id;
  int? price;
  int? qty;

  CartItem(
      {@required this.title,
      @required this.id,
      @required this.price,
      @required this.qty});
}
