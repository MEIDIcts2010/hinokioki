import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Auth());
}

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 14, 13, 12),
        appBar: AppBar(title: Text(">>Hinoki.auth", style: GoogleFonts.cormorantGaramond(color: Color.fromARGB(255, 190, 56, 79), fontSize: 34, fontWeight: FontWeight.w800),), backgroundColor: Color.fromARGB(255, 190, 56, 79),),
        body: Center(child: Text("Hi, user, please auth.")),
      ),
    );
  }
}
