import 'package:flutter/material.dart';
import '../providers/cart.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../widgets/product_grid.dart';
import '../widgets/badget.dart';
import './card_screen.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return MyBadge(
                child: ch,
                value: value.jumlah.toString(),
                color: Colors.white,
              );
            },
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    CardScreen.routeName,
                  );
                },
                icon: Icon(Icons.shopping_cart_outlined)),
          )
        ],
      ),
      body: Product_Grid(),
    );
  }
}
