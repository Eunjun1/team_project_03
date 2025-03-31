import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno093 extends StatefulWidget {
  const Pkmno093({super.key});

  @override
  State<Pkmno093> createState() => _Pkmno093State();
}

class _Pkmno093State extends State<Pkmno093> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/pokeball.png', width: 20),
            ),

            Text('포켓몬 도감', style: TextStyle(fontSize: 40, color: Colors.white)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/pokeball.png', width: 20),
            ),
          ],
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: SimpleGestureDetector(
          onHorizontalSwipe: (direction) {
            direction == SwipeDirection.left
                ? Navigator.pushNamed(context, '/no094')
                : Navigator.pop(context);
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.092 고우스트',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/093.png', width: 200),
                Text(
                  '가스 포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '키 : 1.5m 몸무게 : 0.1kg',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Divider(color: Colors.red),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 350,
                    height: 250,
                    child: Text(
                      '어둠 속에서 아무도 없는데 \n누군가 보고 있다는 느낌이 들면 \n그곳에 고우스트가 있는 것이다.',
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
