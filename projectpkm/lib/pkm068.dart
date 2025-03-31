import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkm068 extends StatefulWidget {
  const Pkm068({super.key});

  @override
  State<Pkm068> createState() => _Pkm68State();
}

class _Pkm68State extends State<Pkm068> {
  late String pokemon;

  @override
  void initState() {
    super.initState();
    pokemon = 'images/068.jpeg';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: SimpleGestureDetector(
          onHorizontalSwipe: (direction) {
            direction == SwipeDirection.left 
            ? ErrorMessage(context)
            : Navigator.pop(context);
          },
          child: GestureDetector(
            onDoubleTap: () {
              pokemon == 'images/068.jpeg'
              ? pokemon = 'images/068_1.webp'
              : pokemon = 'images/068.jpeg';

              setState(() {});},
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Text('no.068 괴력몬',
                  style: TextStyle(fontSize: 40,
                  color: Colors.white)),
                  Image.asset(pokemon,height: 200,),
                  Text('괴력포켓몬',
                  style: TextStyle(fontSize: 40,
                  color: Colors.white),
                  textAlign: TextAlign.left),
                  Text('키 : 1.6m 몸무게 : 130kg',
                  style: TextStyle(fontSize: 20,
                  color: Colors.white),
                  textAlign: TextAlign.left),
                  Divider(color: Colors.red),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 350,
                      height: 250,
                      child: Text('발달한 4개의 팔은 2초 동안 1000번의 펀치를 날릴 수 있다.',
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
  ErrorMessage(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('이전 진화가 없거나 이후 진화가 없습니다.'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      )
    );
    setState(() {});
  }
}