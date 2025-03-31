import 'package:flutter/material.dart';

class Pkmno396 extends StatefulWidget {
  const Pkmno396({super.key});

  @override
  State<Pkmno396> createState() => _Pkmno396State();
}

class _Pkmno396State extends State<Pkmno396> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // appBar: AppBar(
      //   toolbarHeight: 107,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       // Image.asset('images/pkmno396.webp'),
      //       Text('포켓몬 도감',
      //       style: TextStyle(fontSize: 40,
      //       color: Colors.white)),
      //       // Image.asset('images/pkmno396.webp'),
      //     ],
      //   ),
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.black
      // ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Text('no.396 찌르꼬',
              style: TextStyle(fontSize: 40,
              color: Colors.white)),
              Image.asset('images/pkmno396.webp'),
              Text('찌르레기포켓몬',
              style: TextStyle(fontSize: 40,
              color: Colors.white),
              textAlign: TextAlign.left),
              Text('키 : 0.2m \n몸무게 : 2kg',
              style: TextStyle(fontSize: 32,
              color: Colors.white),
              textAlign: TextAlign.left),
              Divider(color: Colors.red),
              Text('평소에는 무리로 살고 \n있지만 1마리가 되면 \n눈에 띄지 않는다. \n울음소리가 무척 시끄 \n럽다.',
              style: TextStyle(fontSize: 32,
              color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}