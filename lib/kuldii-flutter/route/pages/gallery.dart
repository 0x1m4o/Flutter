import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/photo.dart';

class MyGalleryPage extends StatelessWidget {
  static const nameRoute = '/gallery';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Gallery page',
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_left),
                        Text(
                          'Back',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyPhotoPage.nameRoute);
                    },
                    child: Row(
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(fontSize: 25),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
