import 'package:flutter/material.dart';
import 'package:projectpkm/home.dart';
import 'package:projectpkm/pkm005.dart';

import 'pkm004.dart';
import 'pkm006.dart';

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
      initialRoute: '/showhome',

      routes: {
        
        '/main': (context) => Home(),
        //'/showhome': (context)=> Showhome(),

        // '/no' : (context) => , // 1tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 2tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        '/no004' : (context) => Pkmno004(), // 3tab
        '/no005' : (context) => Pkmno005(),
        '/no006' : (context) => Pkmno006(),
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
