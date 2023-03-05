import 'package:flutter/material.dart';
import 'package:learning_flutter/multiProvider/widgets/badget.dart';

class CardScreen extends StatelessWidget {
  static const routeName = '/card-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
        actions: [
          MyBadge(
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    CardScreen.routeName,
                  );
                },
                icon: Icon(Icons.shopping_cart_outlined)),
            value: '0',
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
