import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final int price;

  ProductItem(this.id, this.title, this.imageUrl, this.description, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: id,
              );
            },
            child: Image.network(
              imageUrl,
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
                      title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 0, 0, 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
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
