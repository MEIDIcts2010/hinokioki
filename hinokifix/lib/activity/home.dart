import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'today_activity.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  void _log() {
    FirebaseAuth.instance.signOut();
  }

  void _routes() {
    MaterialApp(routes: {"/today": (context) => Today()});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: _log, child: Text("Log out")),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/today");
            },
            child: Text("Заметки"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/note");
            },
            child: Text("ЭкранЗАметки"),
          ),
        ],
      ),
    );
  }
}
