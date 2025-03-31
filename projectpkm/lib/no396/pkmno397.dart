import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Pkmno397 extends StatefulWidget {
  const Pkmno397({super.key});

  @override
  State<Pkmno397> createState() => _Pkmno397State();
}

class _Pkmno397State extends State<Pkmno397> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('포켓몬도감'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        toolbarHeight: 80,
      ),

      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Text('no.397 찌르버드',
                style: TextStyle(fontSize: 40,
                color: Colors.white)),
                Image.asset('images/397.webp',
                height: 200,),
                Text('찌르레기포켓몬',
                style: TextStyle(fontSize: 40,
                color: Colors.white)),
                Text('키 : 0.6m, 몸무게 : 15.5kg',
                style: TextStyle(fontSize: 20,
                color: Colors.white)),
                Divider(color: Colors.red),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    width: 350,
                    height: 250,
                    child: Text('숲이나 초원에 서식한다. 그룹이 마주치면 영역을 건 분쟁이 시작된다.',
                    style: TextStyle(fontSize: 24,
                    color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  _onHorizontalSwipe(SwipeDirection direction){
    if (direction == SwipeDirection.left){
      Navigator.popAndPushNamed(context, '/no398');
    }
  }
}