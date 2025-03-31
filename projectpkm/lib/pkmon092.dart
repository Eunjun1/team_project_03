import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno092 extends StatefulWidget {
  const Pkmno092({super.key});

  @override
  State<Pkmno092> createState() => _Pkmno092State();
}

class _Pkmno092State extends State<Pkmno092> {
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
        child: SimpleGestureDetector(
          onHorizontalSwipe: (direction) {
            direction == SwipeDirection.left
                ? Navigator.pushNamed(context, '/no093')
                : errorSnackBar();
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.092 고오스',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/092.png',width: 200,),
                Text(
                  '가스 포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '키 : 1.3m 몸무게 : 0.1kg',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Divider(color: Colors.red),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '흐릿한 가스 상태의 생명체. \n가스에 휘감기면 인도코끼리조차 \n2초 안에 쓰러진다',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } //build

  errorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('첫 페이지'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      ),
    );
  }
}//Class