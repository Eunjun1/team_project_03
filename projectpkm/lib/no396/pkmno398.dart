import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno398 extends StatefulWidget {
  const Pkmno398({super.key});
  @override
  State<Pkmno398> createState() => _Pkmno398State();
}

class _Pkmno398State extends State<Pkmno398> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/pokeball.png', width: 20),
              ),

              Text(
                '포켓몬 도감',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/pokeball.png', width: 20),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),

      body: SimpleGestureDetector(
        onHorizontalSwipe:
            (direction) => _onHorizontalSwipe(direction, context),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.398 찌르호크',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/398.webp', height: 200),
                Text(
                  '맹금포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  '키 : 1.2m, 몸무게 : 24.9kg',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Divider(color: Colors.red),
                SizedBox(
                  width: 350,
                  height: 250,
                  child: Text(
                    '날개와 발의 근육이 강해 작은 포켓몬을 붙잡은 채로 너끈히 날 수 있다.',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onHorizontalSwipe(SwipeDirection direction, BuildContext context) {
    if (direction == SwipeDirection.left) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.red,
            title: Text('경고', style: TextStyle(color: Colors.yellow)),
            content: Text(
              '마지막 진화입니다\n!!!!!!!!!!!!!!!!!!!!!!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            actions: [
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text(
                    '알겠습니다.',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }
} //main
