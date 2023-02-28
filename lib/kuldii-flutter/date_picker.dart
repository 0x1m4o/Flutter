import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDate = DateFormat.yMMMMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100),
                    initialDatePickerMode: DatePickerMode.day,
                    builder: (context, child) {
                      return Theme(data: ThemeData.dark(), child: child!);
                    },
                    // initialEntryMode: DatePickerEntryMode.input,
                    // selectableDayPredicate: (day) {
                    //   if ((day.isAfter(
                    //           DateTime.now().subtract(Duration(days: ))) &&
                    //       day.isBefore(DateTime.now().add(Duration(days: 2)))))
                    //     return true;
                    //   return false;
                    // },
                    helpText: 'Tanggal Pemesanan',
                    confirmText: 'Pesan',
                    cancelText: 'Batalkan',
                    selectableDayPredicate: (day) {
                      if (day.isBefore(
                          DateTime.now().subtract(Duration(days: 1)))) {
                        return false;
                      }
                      return true;
                    },
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        selectedDate = DateFormat.yMMMMd().format(value);
                      });
                    }
                  });
                },
                child: Text('Atur Pemesanan')),
            SizedBox(
              height: 20,
            ),
            Text((selectedDate != DateFormat.yMMMMd().format(DateTime.now()))
                ? 'Pesananmu di tanggal $selectedDate'
                : ''),
            SizedBox(
              height: 20,
            ),
            if (selectedDate != DateFormat.yMMMMd().format(DateTime.now()))
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  setState(() {
                    selectedDate = DateFormat.yMMMMd().format(DateTime.now());
                  });
                },
                child: Text('Batalkan Pesanan'),
              )
          ],
        ),
      ),
    );
  }

  // void _getTime() {
  //   final DateTime now = DateTime.now();
  //   if (selectedDate.year == now.year &&
  //       selectedDate.month == now.month &&
  //       selectedDate.day == now.day) {
  //     final String formattedDateTime = _formatDateTime(now);
  //     setState(() {
  //       _timeString = formattedDateTime;
  //     });
  //   }
  // }

  // String _formatDateTime(DateTime dateTime) {
  //   return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
  // }
}
