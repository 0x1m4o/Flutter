import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';
import '../providers/product.dart';

import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: productData.id,
              );
            },
            child: Image.network(
              productData.imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
          footer: Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 10, 0, 3),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      productData.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      productData.description!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
                Consumer<Product>(
                  builder: (context, value, child) {
                    return Row(
                      children: [
                        IconButton(
                          icon: (!productData.isFavorite)
                              ? Icon(Icons.favorite_border_outlined)
                              : Icon(Icons.favorite),
                          color: Colors.pink[300],
                          onPressed: () {
                            productData.statusFav();
                          },
                        ),
                        IconButton(
                          icon: Icon((!productData.isCart)
                              ? Icons.shopping_cart_outlined
                              : Icons.shopping_cart),
                          onPressed: () {
                            productData.statusCart();
                          },
                          color: Colors.black,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          )

          // GridTileBar(
          //   backgroundColor: Colors.black87,
          //   leading: IconButton(
          //     icon: Icon(Icons.favorite_border_outlined),
          //     color: Theme.of(context).colorScheme.secondary,
          //     onPressed: () {},
          //   ),
          //   title: Text(
          //     title,
          //     textAlign: TextAlign.center,
          //   ),
          //   trailing: IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart,
          //     ),
          //     onPressed: () {},
          //     color: Theme.of(context).colorScheme.secondary,
          //   ),
          // ),
          ),
    );
  }
}
