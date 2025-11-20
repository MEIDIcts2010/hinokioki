import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  void _log() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _log, child: Text("Log out"));
  }
}
