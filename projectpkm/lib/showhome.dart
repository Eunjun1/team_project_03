import 'package:flutter/material.dart';
import 'package:projectpkm/no443/pkmon443.dart';

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
          //Pkmno396(),
          //Pkmno092(),
          //Pkmno004(),
          Pkmon443(),
          //Pkmno066(),
        ],
      ),

      bottomNavigationBar: TabBar(
        controller: controller,

        tabs: [
          Tab(icon: Icon(Icons.radio_button_on)),
          Tab(icon: Icon(Icons.radio_button_on)),
          Tab(icon: Icon(Icons.radio_button_on)),
          Tab(icon: Icon(Icons.radio_button_on)),
          Tab(icon: Icon(Icons.radio_button_on)),
        ],
      ),
    );
  }
}
