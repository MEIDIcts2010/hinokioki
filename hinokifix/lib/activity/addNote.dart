import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class addNotes extends StatefulWidget {
  const addNotes({super.key});

  @override
  State<addNotes> createState() => _addNotesState();
}

class _addNotesState extends State<addNotes> {
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
                ">> Hinoki.Create",
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
          Padding(
            padding: EdgeInsetsGeometry.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SegmentedButton(
                  style: SegmentedButton.styleFrom(selectedBackgroundColor: Color.fromARGB(255, 190, 56, 79), backgroundColor: Colors.white, foregroundColor: Color.fromARGB(255, 190, 56, 79), selectedForegroundColor: Colors.white),
                  selectedIcon: Icon(Icons.add),
                  segments: <ButtonSegment<int>>[
                    ButtonSegment<int>(
                      value: 1,
                      label: Text(
                        "Заметка",
                        style: GoogleFonts.pixelifySans(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ButtonSegment<int>(
                      value: 2,
                      label: Text(
                        "Проект",
                        style: GoogleFonts.pixelifySans(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                  selected: _selectedSegment,
                  onSelectionChanged: (Set<int> newSelection) {
                    setState(() {
                      _selectedSegment = newSelection;
                    });
                  },
                ),
              ],
            ),
          ),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Название", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: TextField(maxLines: null, style: GoogleFonts.jost(color: Colors.white), cursorColor: Color.fromARGB(255, 190, 56, 79), decoration: InputDecoration(filled: false, enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 190, 56, 79))), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)))),),),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Содержание", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: TextField(minLines: 4, style: GoogleFonts.jost(color: Colors.white), cursorColor: Color.fromARGB(255, 190, 56, 79), maxLines: null, decoration: InputDecoration(filled: false, enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 190, 56, 79))), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)))),),),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Приоритет", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: TextField(maxLines: null, style: GoogleFonts.jost(color: Colors.white), cursorColor: Color.fromARGB(255, 190, 56, 79), decoration: InputDecoration(filled: false, enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 190, 56, 79))), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)))),),),
          Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsetsGeometry.only(left: 36, top: 33), child: Text("Пины", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),),),),
          SizedBox(width: double.infinity, child: Padding(padding: EdgeInsetsGeometry.only(left: 30, right: 30, top: 6), child: OutlinedButton.icon(onPressed: () {}, style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), side: BorderSide(color: Color.fromARGB(255, 190, 56, 79), width: 1)), label: Text("Прикрепить", style: GoogleFonts.jost(color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),), icon: Icon(Icons.attach_file, color: Color.fromARGB(255, 109, 109, 109),),)),),
          ConstrainedBox(constraints: BoxConstraints(minHeight: 50, maxHeight: double.infinity), child: Container(),),
          SizedBox(width: double.infinity, child: Padding(padding: EdgeInsets.only(left: 30, right: 30), child: OutlinedButton(style: OutlinedButton.styleFrom(side: BorderSide(color: Color.fromARGB(255, 190, 56, 79), width: 3)), onPressed: () {}, child: Text("Hinoki!", style: GoogleFonts.tiny5(fontWeight: FontWeight.w600,color: Color.fromARGB(255, 109, 109, 109), fontSize: 16),)),),)
                      ],
          
      ),)
    );
  }
}
