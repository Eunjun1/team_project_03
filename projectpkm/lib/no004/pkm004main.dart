import 'package:flutter/material.dart';

class Pkmno004main extends StatefulWidget {
  const Pkmno004main({super.key});

  @override
  State<Pkmno004main> createState() => _Pkmno004mainState();
}

class _Pkmno004mainState extends State<Pkmno004main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/pkm004.webp"),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "파이리",
                style: TextStyle(
                  fontSize: 40
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/no004'), 
              child: Text(
                "도감열기",
                style: TextStyle(
                  fontSize: 40
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}