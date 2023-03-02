import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:faker/faker.dart';

import 'product.dart';

Faker faker = Faker();

class Products with ChangeNotifier {
  List<Product> _allProducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: faker.food.dish(),
        description: faker.lorem
            .sentences(30)
            .toString()
            .replaceAll(RegExp('[^A-Za-z0-9]'), ''),
        price: 100000 + Random().nextInt(100000),
        imageUrl: faker.image.image(
            width: 500, height: 500, keywords: ['Dish', 'Food'], random: true),
      );
    },
  );

  List<Product> get allProducts {
    return [..._allProducts];
  }

  Product findById(productId) {
    return _allProducts.firstWhere((prod_id) => prod_id.id == productId);
  }
}
