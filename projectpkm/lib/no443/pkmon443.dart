import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmon443 extends StatefulWidget {
  const Pkmon443({super.key});

  @override
  State<Pkmon443> createState() => _Pkmon443State();
}

class _Pkmon443State extends State<Pkmon443> {
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
                        'no.443 딥상어동',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/443.webp', height: 200),
                      ),

                      const Text(
                        '육지상어 포켓몬',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        '키 : 0.7m   몸무게 : 18kg',
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
                            '평소에는 무리로 살고 있지만 1마리가 되면 눈에 띄지 않는다. 울음소리가 무척 시끄럽다.',
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
      Navigator.popAndPushNamed(context, '/no444');
    }
  }
}
