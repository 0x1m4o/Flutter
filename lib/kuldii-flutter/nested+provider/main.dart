// import 'package:learning_flutter/provider/providers/all_products.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';

// import './provider/screens/products_overview_screen.dart';
// import './provider/screens/product_detail_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) {
//         return Products();
//       },
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'MyShop',
//         theme: ThemeData(
//           primarySwatch: Colors.indigo,
//           fontFamily: 'Lato',
//         ),
//         home: ProductsOverviewScreen(),
//         routes: {
//           ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
//         },
//       ),
//     );
//   }
// }
