import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno006 extends StatefulWidget {
  const Pkmno006({super.key});

  @override
  State<Pkmno006> createState() => _Pkmno006State();
}

class _Pkmno006State extends State<Pkmno006> {
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
                child: Image.asset('images/006small.webp', width: 70),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: SimpleGestureDetector(
          onHorizontalSwipe: (direction) {
            direction == SwipeDirection.left
                ? print('None')
                : Navigator.pop(context);
          },
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  'no.006 리자몽',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Image.asset('images/006.webp', height: 200),
                Text(
                  '화염 포켓몬',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  '키 : 1.7m 몸무게 : 90.5kg',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Divider(color: Colors.red),
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
                              padding: const EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    250,
                                    103,
                                    45,
                                  ),
                                  fixedSize: Size(100, 20),
                                ),
                                onPressed: () {},
                                child: Text(
                                  '불 꽃',
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
                          '지상 1400m까지 날개를 사용해 날 수 있다. 고열의 불꽃을 내뿜는다.',
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
}
