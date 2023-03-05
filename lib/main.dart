import 'package:learning_flutter/multiProvider/providers/cart.dart';
import 'package:learning_flutter/multiProvider/screens/card_screen.dart';

import 'multiProvider/providers/all_products.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'multiProvider/screens/products_overview_screen.dart';
import 'multiProvider/screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return Products();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return Cart();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CardScreen.routeName: (ctx) => CardScreen(),
        },
      ),
    );
  }
}
