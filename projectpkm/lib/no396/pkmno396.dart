import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '포켓몬 도감',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/396small.webp', width: 70),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),

      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.396 찌르꼬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/396.webp', height: 200),
                Text(
                  '찌르레기포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  '키 : 0.2m 몸무게 : 2kg',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Divider(color: Colors.red),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    width: 350,
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    110,
                                    110,
                                    110,
                                  ),
                                  fixedSize: Size(100, 20),
                                ),
                                onPressed: () {},
                                child: Text(
                                  '노 말',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    153,
                                    210,
                                    236,
                                  ),
                                  fixedSize: Size(100, 20),
                                ),

                                onPressed: () {},
                                child: Text(
                                  '비 행',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '평소에는 무리로 살고있지만 1마리가 되면 눈에 띄지 않는다. 울음소리가 무척 시끄럽다.',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
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

  _onHorizontalSwipe(SwipeDirection direction) {
    if (direction == SwipeDirection.left) {
      Navigator.popAndPushNamed(context, '/no397');
    }
  }
}
