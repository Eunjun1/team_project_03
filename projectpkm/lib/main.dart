import 'package:flutter/material.dart';
import 'package:projectpkm/home.dart';
import 'package:projectpkm/pkm066.dart';
import 'package:projectpkm/pkm067.dart';
import 'package:projectpkm/pkm068.dart';

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
        '/showhome': (context)=>Showhome(),

        // '/no' : (context) => , // 1tab 
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 2tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 3tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        // '/no' : (context) => , // 4tab
        // '/no' : (context) => ,
        // '/no' : (context) => ,
        '/no066' : (context) => Pkm066(), // 5tab
        '/no067' : (context) => Pkm067(),
        '/no068' : (context) => Pkm068(), 





      
      
      
      
      },




    );
  }
}
