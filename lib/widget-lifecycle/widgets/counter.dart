import 'package:flutter/material.dart';
import '/widget-lifecycle/pages/other_page.dart';

class WidgetCounter extends StatefulWidget {
  const WidgetCounter({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  State<WidgetCounter> createState() => _WidgetCounterState();
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void didUpdateWidget(covariant WidgetCounter oldWidget) {
    print(oldWidget.counter);
    print('didUpdateWidget');
    print(widget.counter);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${widget.counter}',
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, OtherPage.routeName,
                    arguments: widget.counter);
              },
              child: Text('Go to Other Page'))
        ],
      ),
    );
  }
}
