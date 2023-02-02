import 'package:flutter/material.dart';
import 'package:flutter_application_4/Home_Screen.dart';
import 'package:flutter_application_4/counter_screen.dart';
import 'package:flutter_application_4/login_screen.dart';
import 'package:flutter_application_4/messenger_design.dart';
import 'package:flutter_application_4/messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : CounterScreen(),
    );
  }
}
