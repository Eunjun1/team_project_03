import 'package:flutter/material.dart';

class Pkmno443Main extends StatefulWidget {
  const Pkmno443Main({super.key});

  @override
  State<Pkmno443Main> createState() => _Pkmno443nameState();
}

class _Pkmno443nameState extends State<Pkmno443Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Image.asset('images/443.webp', width: 300),
            Text('딥상어동', style: TextStyle(color: Colors.white)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () => Navigator.pushNamed(context, '/no443'),
              child: Text('도감 열기', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
