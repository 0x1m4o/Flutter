import 'package:flutter/material.dart';
import 'package:learning_flutter/provider/providers/all_products.dart';
import './product_item.dart';
import 'package:provider/provider.dart';

class Product_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allProducts = productData.allProducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        allProducts[i].id!,
        allProducts[i].title!,
        allProducts[i].imageUrl!,
        allProducts[i].description!,
        allProducts[i].price!,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
