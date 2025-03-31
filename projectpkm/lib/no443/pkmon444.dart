import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmon444 extends StatefulWidget {
  const Pkmon444({super.key});

  @override
  State<Pkmon444> createState() => _Pkmon444State();
}

class _Pkmon444State extends State<Pkmon444> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,

      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => onHorizontalSwipe(direction),
        child: Container(
          child: Center(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      const Text(
                        'no.444 한바이트',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/444.webp', height: 200),
                      ),

                      const Text(
                        '동굴 포켓몬',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        '키 : 1.4m   몸무게 : 56kg',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const Divider(color: Colors.red),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          width: 350,
                          height: 250,
                          child: const Text(
                            '반짝반짝 빛나는 것을 아주 좋아하기에 동굴 안에서 발견한 보물을 자신의 둥지에 모아둔다.',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onHorizontalSwipe(SwipeDirection direction) {
    if (direction == SwipeDirection.left) {
      // right ==> left
      Navigator.popAndPushNamed(context, '/no445');
    } else {
      Navigator.popAndPushNamed(context, '/no443');
    }
  }
}
