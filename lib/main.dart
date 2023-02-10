import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/modules/counter/counter_screen.dart';
import 'package:flutter_application_4/modules/login/login_screen.dart';
import 'package:flutter_application_4/modules/messenger2/messenger_design.dart';
import 'package:flutter_application_4/modules/messenger1/messenger_screen.dart';

import 'layout/Home_Screen.dart';
import 'shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : CounterScreen(),
    );
  }
}
