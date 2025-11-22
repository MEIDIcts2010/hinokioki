import 'dart:math';
import 'package:hinokifix/assets/meme_dart_full.dart';
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
  
  void _addNote() {

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ">> Hinoki.today",
                style: GoogleFonts.tiny5(
                  color: Color.fromARGB(255, 190, 56, 79),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/editnote");
                },
                icon: Icon(Icons.add_circle_outline),
                color: Color.fromARGB(255, 190, 56, 79),
                iconSize: 30,
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(color: Color.fromARGB(125, 22, 22, 22), height: 3),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: 
                SingleChildScrollView(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start, // важно!
                  children: [
                    Text(
                      getFormattedDate(),
                      style: TextStyle(
                        fontFamily: 'NuromMedium',
                        color: Color.fromARGB(255, 189, 43, 67),
                        fontSize: 48,
                      ),
                    ),
                    Text(
                      memeText(),
                      style: GoogleFonts.jost(
                        color: const Color.fromARGB(255, 173, 31, 55),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 40), child: Text("Заметки:", style: GoogleFonts.pixelifySans(color: Color.fromARGB(255, 190, 56, 79), fontSize: 24),),),),
                    Padding(padding: EdgeInsetsGeometry.only(top: 2, left: 25, right: 25), child: Card(color: Color.fromARGB(255, 33, 30, 36), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), child: Container(width: double.infinity, height: 150),),),
                    Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 40), child: Text("Проекты:", style: GoogleFonts.pixelifySans(color: Color.fromARGB(255, 190, 56, 79), fontSize: 24),),),),
                    Padding(padding: EdgeInsetsGeometry.only(top: 2, left: 25, right: 25), child: Card(color: Color.fromARGB(255, 33, 30, 36), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), child: Container(width: double.infinity, height: 150),),)
                  ],
                ),)
                
          ),
        ],
      )
    );
  }
}
