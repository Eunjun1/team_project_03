import 'package:flutter/material.dart';
import 'package:projectpkm/no004/pkm004main.dart';
import 'package:projectpkm/no066/pkm066main.dart';
import 'package:projectpkm/no092/pkmno092main.dart';
import 'package:projectpkm/no396/pkmno396main.dart';
import 'package:projectpkm/no443/pkmno443main.dart';

class Showhome extends StatefulWidget {
  const Showhome({super.key});

  @override
  State<Showhome> createState() => _ShowhomeState();
}

class _ShowhomeState extends State<Showhome>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/pokeball.png', width: 20),
            ),

            Text('포켓몬 도감', style: TextStyle(fontSize: 40, color: Colors.white)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/pokeball.png', width: 20),
            ),
          ],
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),

      body: TabBarView(
        controller: controller,
        children: [
          Pkmno396main(),
          Pkmno092main(),
          Pkmno004main(),
          Pkmno443Main(),
          Pkm066main(),
        ],
      ),

      bottomNavigationBar: Container(
        color: Colors.red,
        child: TabBar(
          controller: controller,

          tabs: [
            Tab(icon: Image.asset('images/396.webp', width: 30), height: 60),
            Tab(icon: Image.asset('images/092.png', width: 30)),
            Tab(icon: Image.asset('images/004.webp', width: 30)),
            Tab(icon: Image.asset('images/443.webp', width: 30)),
            Tab(icon: Image.asset('images/066.png', width: 30)),
          ],
        ),
      ),
    );
  }
}
