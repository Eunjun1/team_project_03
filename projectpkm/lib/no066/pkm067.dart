import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkm067 extends StatefulWidget {
  const Pkm067({super.key});

  @override
  State<Pkm067> createState() => _Pkm67State();
}

class _Pkm67State extends State<Pkm067> {
  late String pokemon;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pokemon = 'images/067.webp';
    
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
            ? Navigator.pushNamed(context, '/no068')
            : Navigator.pop(context);
          },
          child: GestureDetector(
            onDoubleTap: () {
              pokemon == 'images/067.webp'
              ? pokemon = 'images/067_1.jpeg'
              : pokemon = 'images/067.webp';

              setState(() {});},
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Text('no.067 근육몬',
                  style: TextStyle(fontSize: 40,
                  color: Colors.white)),
                  Image.asset(pokemon,height: 200,),
                  Text('괴력포켓몬',
                  style: TextStyle(fontSize: 40,
                  color: Colors.white),
                  textAlign: TextAlign.left),
                  Text('키 : 1.5m 몸무게 : 70kg',
                  style: TextStyle(fontSize: 20,
                  color: Colors.white),
                  textAlign: TextAlign.left),
                  Divider(color: Colors.red),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 350,
                      height: 250,
                      child: Text('지칠 줄 모르는 강인한 육체를 가졌다. 무거운 짐 운반하기 등의 일을 돕는다.',
                      style: TextStyle(fontSize: 24,
                      color: Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}