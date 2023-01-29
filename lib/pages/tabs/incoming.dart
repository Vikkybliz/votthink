import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Incoming extends StatefulWidget {
  const Incoming({super.key});

  @override
  State<Incoming> createState() => _IncomingState();
}

class _IncomingState extends State<Incoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                  spreadRadius: 5, //Ne
                  // offset: Offset(40, 40)
                )
              ],
              // border: Border.all(),
              borderRadius: BorderRadius.circular(15)),
          child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.utc(2023, 4, 14),
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.

                // Using `isSameDay` is recommended to disregard
                // the time-part of compared DateTime objects.
                return isSameDay(DateTime.utc(2023, 4, 14), day);
              }),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          // padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                  spreadRadius: 5, //Ne
                  // offset: Offset(40, 40)
                )
              ],
              // border: Border.all(),
              borderRadius: BorderRadius.circular(15)),
          child: ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                title: Text("Vote for university counsil",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(
                  "April 14th 2023, 8am - 3pm",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )
        // Container(
        //   margin: const EdgeInsets.all(20),
        //   padding: const EdgeInsets.all(10),
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black,
        //           blurRadius: 15.0,
        //           spreadRadius: 5, //Ne
        //           // offset: Offset(40, 40)
        //         )
        //       ],
        //       // border: Border.all(),
        //       borderRadius: BorderRadius.circular(15)),
        //   child: Text(
        //     "There are no upcoming elections at the moment. We will send you a reminder for the next election",
        //     style: GoogleFonts.inter(fontSize: 20),
        //   ),
        // ),
      ],
    ));
  }
}
