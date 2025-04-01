import 'dart:async';
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
  late List<String> pkmImg;
  late List<String> pkmName;
  late int current;
  late Timer timer1;

  @override
  void initState() {
    super.initState();
    timer1 = Timer.periodic(Duration(), (timer) {});
    disApper = false;
    pkmImg = ['396.webp', '397.webp', '398.webp'];
    pkmName = ['찌르꼬', '찌르버드', '찌르호크'];
    current = 0;
  }

  @override
  void dispose() {
    timer1.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleGestureDetector(
        onTap: () => _onTap(),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 600,
                    height: 661,
                    color: Colors.black,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/${pkmImg[current]}',
                            width: 300,
                            height: 300,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              pkmName[current],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
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
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 46,
                    top: 100,
                    child: Container(
                      height: 400,
                      width: 300,
                      child: FadeOutParticle(
                        disappear: disApper,
                        child: Image.asset(
                          'images/card_back.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
    timer1 = Timer.periodic(Duration(seconds: 2), (timer) {
      current++;
      if (current >= pkmImg.length) {
        current = 0;
      }
    });
    setState(() {});
  }
}
