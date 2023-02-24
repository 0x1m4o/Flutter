// import 'package:flutter/material.dart';
// import '../../main.dart';
// import './pagesatu.dart';

// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings Page'),
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
//               'Settings Page',
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
//                   .push(MaterialPageRoute(builder: (context) => MyHomePage()));
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
