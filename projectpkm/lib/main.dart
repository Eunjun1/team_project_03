import 'package:flutter/material.dart';
import 'package:projectpkm/home.dart';

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
      initialRoute: '/main',

      routes: {
        
        '/main': (context) => Home(),
        '/showhome': (context)=>Showhome(),

        '/no' : (context) => , // 1tab
        '/no' : (context) => ,
        '/no' : (context) => ,
        '/no' : (context) => , // 2tab
        '/no' : (context) => ,
        '/no' : (context) => ,
        '/no' : (context) => , // 3tab
        '/no' : (context) => ,
        '/no' : (context) => ,
        '/no' : (context) => , // 4tab
        '/no' : (context) => ,
        '/no' : (context) => ,
        '/no' : (context) => , // 5tab
        '/no' : (context) => ,
        '/no' : (context) => ,





      
      
      
      
      },




    );
  }
}
