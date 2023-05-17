import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
// import' as cupertinoExtended;
import 'cupertino_picker_extended.dart' as cupertinoExtended;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime dateTime = DateTime(1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(dateTime.toString()),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  // showMonthPicker(
                  //   context: context,
                  //   initialDate: DateTime.now(),
                  // ).then((date) {
                  //   if (date != null) {
                  //     setState(() {
                  //       dateTime = date;
                  //     });
                  //   }
                  // });
                  showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 250,
                          child: cupertinoExtended.CupertinoDatePicker(
                            onDateTimeChanged: (DateTime value) {
                              // setDate('${value.month}/${value.year}',
                              //     setDateFunction, section, arrayPos);
                              setState(() {
                                print(value);
                              });
                            },
                            initialDateTime: DateTime.now(),
                            mode:
                                cupertinoExtended.CupertinoDatePickerMode.date,
                          ),
                        );
                      });
                },
                child: Text("SecondPage")),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
