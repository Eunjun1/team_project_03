import 'package:flutter/material.dart';
import 'package:projectpkm/no443/pkmon443.dart';
import 'package:projectpkm/no443/pkmon444.dart';
import 'package:projectpkm/no443/pkmon445.dart';
import 'package:projectpkm/showhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/showhome',

      routes: {
        '/showhome': (context) => Showhome(),

        // '/no' : (context) => , // 1tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 2tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 3tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        '/no443': (context) => Pkmon443(), // 4tab
        '/no444': (context) => Pkmon444(),
        '/no445': (context) => Pkmon445(),
        // '/no' : (context) => , // 5tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
      },
    );
  }
}
