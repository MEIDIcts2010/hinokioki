import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _addNotesState();
}

class _addNotesState extends State<Notes> {
  Set<int> _selectedSegment = <int>{1};

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
                ">> Hinoki.Note",
                style: GoogleFonts.tiny5(
                  color: Color.fromARGB(255, 190, 56, 79),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/today");
                },
                icon: SvgPicture.asset("assets/icons/back.svg", width: 32, height: 32, color: Color.fromARGB(255, 190, 56, 79),),
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
      body:  SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Название", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: Container(constraints: BoxConstraints(minWidth: double.infinity, minHeight: 40), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Color.fromARGB(255, 190, 56, 79), width: 1)), child: Align(alignment: Alignment.centerLeft, child: Text("Отсосать у короля музыки", style: GoogleFonts.jost(color: Colors.white, fontSize: 16),),), padding: EdgeInsets.all(16),)),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Содержание", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: Container(constraints: BoxConstraints(minWidth: double.infinity, minHeight: 40), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Color.fromARGB(255, 190, 56, 79), width: 1)), child: Align(alignment: Alignment.centerLeft, child: Text("Отсосать у величайшего короля музыки и всего мира моего любимого музыканта 5mewmet ты лучший братан честно", style: GoogleFonts.jost(color: Colors.white, fontSize: 16),),), padding: EdgeInsets.all(16),)),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Приоритет", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: Container(constraints: BoxConstraints(minWidth: double.infinity, minHeight: 40), decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Color.fromARGB(255, 190, 56, 79), width: 1)), child: Align(alignment: Alignment.centerLeft, child: Text("1", style: GoogleFonts.jost(color: Colors.white, fontSize: 16),),), padding: EdgeInsets.all(16),)),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Пины", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          SizedBox(width: double.infinity, child: Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), side: BorderSide(color: Color.fromARGB(255, 190, 56, 79), width: 1)), child: Text("Напоминание на 05.05.2010 9:30", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),)),),
        ],
      ),)
    );
  }
}
