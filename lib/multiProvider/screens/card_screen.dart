import 'package:flutter/material.dart';
import '../providers/cart.dart';
import 'package:learning_flutter/multiProvider/widgets/badget.dart';
import 'package:provider/provider.dart';

class CardScreen extends StatelessWidget {
  static const routeName = '/card-screen';

  @override
  Widget build(BuildContext context) {
    final cardData = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: Container(
                padding: EdgeInsets.all(20),
                child: Text('Total : \$ ${cardData.totalHarga}')),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: cardData.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    cardData.items.values.toList()[index].title.toString()),
                subtitle: Text(
                    'Quantity: ${cardData.items.values.toList()[index].qty}'),
                trailing: Container(
                  child: Text(
                      '\$ ${cardData.items.values.toList()[index].qty! * cardData.items.values.toList()[index].price!} '),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
