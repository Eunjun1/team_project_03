import 'package:flutter/material.dart';
import 'package:projectpkm/no004/pkm004.dart';
import 'package:projectpkm/no004/pkm004main.dart';
import 'package:projectpkm/no004/pkm005.dart';
import 'package:projectpkm/no004/pkm006.dart';
import 'package:projectpkm/no066/pkm066.dart';
import 'package:projectpkm/no066/pkm066main.dart';
import 'package:projectpkm/no066/pkm067.dart';
import 'package:projectpkm/no066/pkm068.dart';
import 'package:projectpkm/no092/pkmno092main.dart';
import 'package:projectpkm/no092/pkmon092.dart';
import 'package:projectpkm/no092/pkmon093.dart';
import 'package:projectpkm/no092/pkmon094.dart';
import 'package:projectpkm/no396/pkmno396.dart';
import 'package:projectpkm/no396/pkmno396main.dart';
import 'package:projectpkm/no396/pkmno397.dart';
import 'package:projectpkm/no396/pkmno398.dart';
import 'package:projectpkm/no443/pkmno443main.dart';
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
        '/444main': (context) => Pkmno443Main(),
        '/396main': (context) => Pkmno396main(),
        '/092main': (context) => Pkmno092main(),
        '/004main': (context) => Pkm004main(),
        '/066main': (context) => Pkm066main(),
        '/no396': (context) => Pkmno396(), // 1tab
        '/no397': (context) => Pkmno397(),
        '/no398': (context) => Pkmno398(),
        '/no092': (context) => Pkmno092(), // 2tab
        '/no093': (context) => Pkmno093(),
        '/no094': (context) => Pkmno094(),
        '/no004': (context) => Pkmno004(), // 3tab
        '/no005': (context) => Pkmno005(),
        '/no006': (context) => Pkmno006(),
        '/no443': (context) => Pkmon443(), // 4tab
        '/no444': (context) => Pkmon444(),
        '/no445': (context) => Pkmon445(),
        '/no066': (context) => Pkm066(), // 5tab
        '/no067': (context) => Pkm067(),
        '/no068': (context) => Pkm068(),
      },
    );
  }
}
