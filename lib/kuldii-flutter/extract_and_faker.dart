import 'package:flutter/material.dart';
import 'package:learning_flutter/kuldii-flutter/text-widget.dart';
import 'package:faker/faker.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = new Faker();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Extract Widget"),
        ),
        body:
            // ListView(
            //   children: [
            /// Extract Widget
            /// Chat Item is the result of ListTile Class that we extracted before in the bottom.
            /// To extract you need to go to refactor and extract it. It will automatically create a class that contains your widget
            // ChatItem(
            //   title: faker.person.name(),
            //   subtitle: faker.lorem.sentence(),
            //   imageUrl: NetworkImage(faker.image.image()),
            // ),
            // Divider(),
            // ],

            /// OR

            /// You can use ListView Builder to automatically create the amount of data
            ListView.builder(
          itemBuilder: (context, index) {
            return ChatItem(
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
              imageUrl: NetworkImage(faker.image.image(
                  width: 200, height: 200, random: true, keywords: ['people'])),
            );
            Divider();
          },
          itemCount: 100,
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final imageUrl;
  final title;
  final subtitle;

  /// Create a constructor
  const ChatItem({this.imageUrl, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: CircleAvatar(
        backgroundImage: imageUrl,
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text("07:17"),
    );
  }
}
