import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../product_models/product.dart';

class MyHome extends StatelessWidget {
  Faker faker = Faker();
  late final List<Product> myProduct = List.generate(
    100,
    (index) {
      return Product(
        faker.food.restaurant(),
        faker.lorem.sentence(),
        10000 + Random().nextInt(100000),
        Image.network(
          '${faker.image.image(width: 200, height: 200, random: true, keywords: [
                'restaurant',
                'food'
              ])}',
        ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Model - Market Place Apps'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 4 / 7),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  // decoration: BoxDecoration(border: Border.all(width: 10)),
                  color: Colors.grey[300],
                  child: GridTile(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        myProduct[index].image,
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            myProduct[index].judul,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 6),
                          child: Text(
                            'RP. ${myProduct[index].harga}',
                            style: TextStyle(fontSize: 8),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            myProduct[index].deskripsi,
                            style: TextStyle(fontSize: 8),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ])),
                ),
              );
            },
            itemCount: myProduct.length,
          ),
        ));
  }
}
