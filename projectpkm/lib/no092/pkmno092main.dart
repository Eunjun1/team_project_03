import 'package:flutter/material.dart';

class Pkmno092main extends StatefulWidget {
  const Pkmno092main({super.key});

  @override
  State<Pkmno092main> createState() => _Pkmno092mainState();
}

class _Pkmno092mainState extends State<Pkmno092main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('images/092.png', width: 300),
            Text("고오스",style: TextStyle(fontSize: 40),),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/no092',);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text("도감보기", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
