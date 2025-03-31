import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

// 추가 패키지
//simple_gesture_detector: ^0.2.1
//fade_out_particle: ^1.2.2


class Pkmno396main extends StatefulWidget {
  const Pkmno396main({super.key});

  @override
  State<Pkmno396main> createState() => _MyWidgetState();
}

late bool disApper;

class _MyWidgetState extends State<Pkmno396main> {
  @override
  void initState() {
    super.initState();
    disApper = false;
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Scaffold(

      body: SimpleGestureDetector(
        onTap: () => _onTap(),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    color: Colors.black,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/396.webp', width: 300, height: 300),
                          Text(
                            '찌르꼬',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          ElevatedButton(
                            onPressed:
                                () => Navigator.pushNamed(context, '/no396'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              backgroundColor: Colors.red,
                            ),
                            child: Text(
                              '도감열기',
                              style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 56.5,
                  top : 200,
                  child: Container(
                    child: FadeOutParticle(
                      disappear: disApper,
                      child: Image.asset('images/card_back.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _onTap() {
    if (disApper == false) {
      disApper = true;
    } else {
      disApper = false;
    }
    setState(() {});
  }
}
