// import 'package:flutter/material.dart';
// import 'package:learning_flutter/provider/providers/all_products.dart';
// import 'package:provider/provider.dart';

// class ProductDetailScreen extends StatelessWidget {
//   static const routeName = '/product-detail';

//   @override
//   Widget build(BuildContext context) {
//     final productId =
//         ModalRoute.of(context)?.settings.arguments as String; // is the id!
//     // ...

//     final product = Provider.of<Products>(context)
//         .allProducts
//         .firstWhere((prod_id) => prod_id.id == productId);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Product Details'),
//         ),
//         body: ListView(children: [
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                     width: double.infinity,
//                     height: 250,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       child: Image.network(
//                         '${product.imageUrl}',
//                         fit: BoxFit.cover,
//                       ),
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   '${product.title}',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                       fontSize: 18,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w800),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   'RP. ${product.price}',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w700),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   '${product.description}',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]));
//   }
// }
