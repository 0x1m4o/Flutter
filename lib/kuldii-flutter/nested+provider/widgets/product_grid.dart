import 'package:flutter/material.dart';
import 'package:learning_flutter/provider/providers/all_products.dart';
import './product_item.dart';
import 'package:provider/provider.dart';

class Product_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final allProducts = productData.allProducts;
    final bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allProducts.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: allProducts[i],
        // create: (context) {
        //   return allProducts[i];
        // },
        child: ProductItem(),
      ),
      gridDelegate: (isLandScape)
          ? SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 16 / 9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            )
          : SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
    );
  }
}
