import 'package:flutter/material.dart';
import 'package:project_03_24/view/eunjun.dart';
import 'package:project_03_24/view/jwscreen.dart';
import 'package:project_03_24/view/main%20screen.dart';
import 'package:project_03_24/view/mainpage.dart';
import 'package:project_03_24/view/sungbae.dart';
import 'package:project_03_24/view/tm.dart';

import 'view/jhscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3조 조원 소개시간',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/main',
      routes: {
        '/main': (context) => MainPage(),
        '/MS': (context) => Mainscreen(),
        '/EJ': (context) => EjScreen(),
        '/JW': (context) => JwScreen(),
        '/TM': (context) => TmScreen(),
        '/JH': (context) => JHScreen(),
        '/SB': (context) => SbScreen(),
      },
    );
  }
}
