import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String? id;
  final String? title;
  final String? description;
  final int? price;
  final String? imageUrl;
  bool isFavorite;
  bool isCart;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
    this.isCart = false,
  });

  void statusFav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  void statusCart() {
    isCart = !isCart;
    notifyListeners();
  }
}
