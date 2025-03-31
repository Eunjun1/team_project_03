import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkm066 extends StatefulWidget {
  const Pkm066({super.key});

  @override
  State<Pkm066> createState() => _Pkm66State();
}

class _Pkm66State extends State<Pkm066> {
  late String pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = 'images/066.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('포켓몬 도감', style: TextStyle(fontSize: 40, color: Colors.white)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/066small.webp', width: 70),
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
                ? Navigator.popAndPushNamed(context, '/no067')
                : ErrorMessage(context);
          },
          child: GestureDetector(
            onDoubleTap: () {
              pokemon == 'images/066.png'
                  ? pokemon = 'images/066_1.png'
                  : pokemon = 'images/066.png';

              setState(() {});
            },
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Text(
                    'no.066 알통몬',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Image.asset(pokemon, height: 200),
                  Text(
                    '괴력포켓몬',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '키 : 0.7m 몸무게 : 16kg',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  Divider(color: Colors.red),
                  Padding(
                    padding: const EdgeInsets.all(.0),
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
                                      228,
                                      157,
                                      64,
                                    ),
                                    fixedSize: Size(100, 20),
                                  ),

                                  onPressed: () {},
                                  child: Text(
                                    '격 투',
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
                            '몸집은 어린아이만 하지만 온몸이 근육으로 되어 있어서 어른 100명은 날려 버릴 수 있다.',
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
      ),
    );
  }

  ErrorMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(child: Text('이전 진화가 없거나 이후 진화가 없습니다.')),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
    setState(() {});
  }
}
