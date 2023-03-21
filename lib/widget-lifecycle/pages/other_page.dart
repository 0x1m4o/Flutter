import 'package:flutter/material.dart';
import 'package:learning_flutter/widget-lifecycle/pages/counter_page.dart';

class OtherPage extends StatefulWidget {
  static const routeName = '/other-page';
  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, CounterPage.routeName,
                      arguments:
                          ModalRoute.of(context)!.settings.arguments as int?);
                },
                child: Text('Pergi ke Counter Page'))
          ],
        ),
      ),
    );
  }
}
