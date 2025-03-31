import 'package:flutter/material.dart';
import 'package:projectpkm/home.dart';
import 'package:projectpkm/pkmon092.dart';
import 'package:projectpkm/pkmon093.dart';
import 'package:projectpkm/pkmon094.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/no092',

      routes: {
        
        '/main': (context) => Home(),
        // '/showhome': (context)=>Showhome(),

        // '/no' : (context) => , // 1tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        '/no092' : (context) => Pkmno092(), // 2tab
        '/no093' : (context) => Pkmno093(),
        '/no094' : (context) => Pkmno094(),
        // '/no' : (context) => , // 3tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 4tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 5tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,





      
      
      
      
      },




    );
  }
}
