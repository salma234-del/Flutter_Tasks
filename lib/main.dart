import 'package:flutter/material.dart';
import 'package:flutter_application_4/modules/home/Home_Screen.dart';
import 'package:flutter_application_4/modules/counter/counter_screen.dart';
import 'package:flutter_application_4/modules/login/login_screen.dart';
import 'package:flutter_application_4/modules/messenger2/messenger_design.dart';
import 'package:flutter_application_4/modules/messenger1/messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : LoginScreen(),
    );
  }
}
