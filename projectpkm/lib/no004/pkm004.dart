import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno004 extends StatefulWidget {
  const Pkmno004({super.key});

  @override
  State<Pkmno004> createState() => _Pkmno004State();
}

class _Pkmno004State extends State<Pkmno004> {
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
                ? Navigator.pushNamed(context, '/no005')
                : Navigator.pop(context);
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.004 파이리',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/004.webp', height: 200),
                Text(
                  '도롱뇽 포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '키 : 0.6m 몸무게 : 8.5kg',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Divider(color: Colors.red),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 350,
                    height: 250,
                    child: Text(
                      '태어날 때부터 꼬리의 불꽃이 타오르고 있다. 불꽃이 꺼지면 그 생명이 다하고 만다.',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
