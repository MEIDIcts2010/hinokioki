import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String getFormattedDate() {
    final now = DateTime.now();
    return DateFormat("d MMMM").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 13, 12),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 13, 12),
        title: Padding(
          padding: EdgeInsetsGeometry.only(top: 20, left: 15, bottom: 20),
          child: Row(
            children: [
              Text(
                ">> Hinoki.today",
                style: GoogleFonts.tiny5(
                  color: Color.fromARGB(255, 190, 56, 79),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(preferredSize: Size.fromHeight(1), child: Container(color: Color.fromARGB(125, 22, 22, 22 ), height: 3)),
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(children: [Text(getFormattedDate(), style: GoogleFonts.preahvihear(color: Color.fromARGB(255, 190, 56, 79), fontSize: 48),), Text(getFormattedDate(), style: GoogleFonts.preahvihear(color: Color.fromARGB(255, 190, 56, 79), fontSize: 48),)],)],)
      ],)
    );
  }
}
