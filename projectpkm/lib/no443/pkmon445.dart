import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmon445 extends StatefulWidget {
  const Pkmon445({super.key});

  @override
  State<Pkmon445> createState() => _Pkmon445State();
}

class _Pkmon445State extends State<Pkmon445> {
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
                child: Image.asset('images/445small.webp', width: 70),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),

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
                        'no.445 한카리아스',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('images/445.webp', height: 200),
                      ),
                      const Text(
                        '마하 포켓몬',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        '키 : 1.9m   몸무게 : 95kg',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const Divider(color: Colors.red),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          width: 350,
                          height: 250,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          57,
                                          39,
                                          158,
                                        ),
                                        fixedSize: Size(100, 20),
                                      ),

                                      onPressed: () {},
                                      child: Text(
                                        '드래곤',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                          255,
                                          100,
                                          69,
                                          27,
                                        ),
                                        fixedSize: Size(100, 20),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        '땅',
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
                              const Text(
                                '몸을 접고 날개를 펼치면 마치 제트기 같다. 음속으로 날 수 있다.',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
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
          ),
        ),
      ),
    );
  }

  onHorizontalSwipe(SwipeDirection direction) {
    if (direction == SwipeDirection.right) {
      // right ==> left
      Navigator.popAndPushNamed(context, '/no444');
    } else {
      ErrorMessage(context);
    }
  }

  ErrorMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(child: Text('이전 진화가 없거나 이후 진화가 없습니다.')),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ),
    );
    setState(() {});
  }
}
