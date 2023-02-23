// import 'package:flutter/material.dart';
// import 'package:learning_flutter/kuldii-flutter/drawer/settings.dart';
// import './kuldii-flutter/drawer/pagesatu.dart';

// main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer'),
//       ),
//       drawer: Drawer(
//           child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 100,
//             alignment: Alignment.bottomLeft,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             color: Colors.redAccent,
//             child: Text(
//               'Drawer',
//               style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           ListTile(
//             tileColor: Colors.grey.withOpacity(0.2),
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => PageSatu()));
//             },
//             leading: Icon(
//               Icons.home,
//               size: 30,
//             ),
//             title: Text(
//               'Home',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           ListTile(
//             tileColor: Colors.grey.withOpacity(0.2),
//             onTap: () {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => PageSatu()));
//             },
//             leading: Icon(
//               Icons.settings,
//               size: 30,
//             ),
//             title: Text(
//               'Page Satu',
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           ListTile(
//             tileColor: Colors.grey.withOpacity(0.2),
//             onTap: () {
//               Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => SettingsPage()));
//             },
//             leading: Icon(
//               Icons.settings,
//               size: 30,
//             ),
//             title: Text(
//               'Settings',
//               style: TextStyle(fontSize: 20),
//             ),
//           )
//         ],
//       )),
//       body: Center(
//         child: Text('Some Text Here'),
//       ),
//     );
//   }
// }
