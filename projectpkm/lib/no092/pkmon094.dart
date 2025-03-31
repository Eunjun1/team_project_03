import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno094 extends StatefulWidget {
  const Pkmno094({super.key});

  @override
  State<Pkmno094> createState() => _Pkmno094State();
}

class _Pkmno094State extends State<Pkmno094> {
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
                ? errorSnackBar()
                : Navigator.pop(context);
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.094 팬텀',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/094.png', width: 200),
                Text(
                  '가스 포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '키 : 1.5m 몸무게 : 40.5kg',
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
                      '보름달이 뜬 밤에 그림자가 \n멋대로 움직이면서 웃는다면\n팬텀의 소행임이 틀림없다.',
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
  } //build

  errorSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('마지막 페이지'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      ),
    );
  }
} //Class
