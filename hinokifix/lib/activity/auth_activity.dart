import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hinokifix/main.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _showSnackBar(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text), duration: Duration(seconds: 4)),
    );
  }

  void _login() async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
      _showSnackBar("Вы успешно вошли в Hinoki.");
    } catch (e) {
      _showSnackBar("Ошибка: $e");
    }
  }

  void _register() async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
          );
      _showSnackBar("Вы успешно зарегестрировались.");
    } catch (e) {
      _showSnackBar("Ошибка: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 13, 12),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 13, 12),
        title: Padding(
          padding: EdgeInsetsGeometry.only(top: 20, left: 15),
          child: Row(
            children: [
              Text(
                ">> Hinoki.auth",
                style: GoogleFonts.tiny5(
                  color: Color.fromARGB(255, 190, 56, 79),
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "WELCOME",
              style: GoogleFonts.tiny5(
                fontSize: 40,
                color: Color.fromARGB(255, 190, 56, 79),
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "TO",
              style: GoogleFonts.tiny5(
                fontSize: 40,
                color: Color.fromARGB(255, 190, 56, 79),
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "HINOKI !!!",
              style: GoogleFonts.tiny5(
                fontSize: 40,
                color: Color.fromARGB(255, 190, 56, 79),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
            child: TextField(
              style: GoogleFonts.tiny5(color: Colors.white),
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "e-mail",
                labelStyle: GoogleFonts.tiny5(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, right: 60, top: 5, bottom: 10),
            child: TextField(
              style: GoogleFonts.tiny5(color: Colors.white),
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "пароль",
                labelStyle: GoogleFonts.tiny5(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(10, 10, 10, 10),
            child: ElevatedButton(
              onPressed: _login,
              child: Text("Авторизация", style: GoogleFonts.tiny5()),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 250, 213, 255),
                foregroundColor: Color.fromARGB(255, 202, 0, 108),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.fromLTRB(10, 10, 10, 10),
            child: ElevatedButton(
              onPressed: _register,
              child: Text("Регистрация", style: GoogleFonts.tiny5()),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 250, 213, 255),
                foregroundColor: Color.fromARGB(255, 202, 0, 108),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
