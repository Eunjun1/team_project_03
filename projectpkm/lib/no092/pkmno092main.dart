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
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/092.png', width: 300),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "고오스",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/no092');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text("도감 열기", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
