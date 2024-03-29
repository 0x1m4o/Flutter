import 'package:flutter/material.dart';
import '../providers/cart.dart';
import '../widgets/badget.dart';
import '../providers/all_products.dart';
import './card_screen.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!
    // ...

    final product = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
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
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity,
                    height: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        '${product.imageUrl}',
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${product.title}',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'RP. ${product.price}',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0))),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('Berhasil Ditambahkan'),
                                  duration: Duration(milliseconds: 500),
                                ));
                                cart.addCart(product.id!, product.title!,
                                    product.price!);
                              },
                              child: Text('Add To Cart'))),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${product.description}',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
