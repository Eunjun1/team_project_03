import 'package:flutter/material.dart';

class Pkm004main extends StatefulWidget {
  const Pkm004main({super.key});

  @override
  State<Pkm004main> createState() => _Pkm004mainState();
}

class _Pkm004mainState extends State<Pkm004main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/pkm004.webp"),
            Text("파이리"),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/no004'), 
              child: Text("도감열기")
            )
          ],
        ),
      ),
    );
  }
}