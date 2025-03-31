import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno005 extends StatefulWidget {
  const Pkmno005({super.key});

  @override
  State<Pkmno005> createState() => _Pkmno005State();
}

class _Pkmno005State extends State<Pkmno005> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text("포켓몬 도감"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: SimpleGestureDetector(
          onHorizontalSwipe: (direction) {
            direction == SwipeDirection.left
            ? Navigator.popAndPushNamed(context, '/no006')
            : Navigator.pop(context);
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text('no.005 리자드',
                style: TextStyle(fontSize: 40,
                color: Colors.white)),
                Image.asset('images/005.webp', height: 200),
                Text('화염 포켓몬',
                style: TextStyle(fontSize: 40,
                color: Colors.white),
                textAlign: TextAlign.left),
                Text('키 : 1.1m 몸무게 : 19.0kg',
                style: TextStyle(fontSize: 20,
                color: Colors.white),
                textAlign: TextAlign.left),
                Divider(color: Colors.red),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 350,
                    height: 250,
                    child: Text('꼬리를 휘둘러 상대를 쓰러트리고 날카로운 발톱으로 갈기갈기 찢어버린다.',
                    style: TextStyle(fontSize: 24,
                    color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}