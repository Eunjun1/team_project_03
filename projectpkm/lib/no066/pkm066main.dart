import 'package:flutter/material.dart';

class Pkm066main extends StatefulWidget {
  const Pkm066main({super.key});

  @override
  State<Pkm066main> createState() => _Pkm066mainState();
}

class _Pkm066mainState extends State<Pkm066main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/066.png',width: 300,),
          Text('알통몬',style: TextStyle(fontSize: 40,color: Colors.white)),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/no066'), 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: Text('도감열기',),
          ),
        ],
      ),
    );
  }
}