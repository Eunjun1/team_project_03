import 'dart:async';

import 'package:flutter/material.dart';

class Pkmno443Main extends StatefulWidget {
  const Pkmno443Main({super.key});

  @override
  State<Pkmno443Main> createState() => _Pkmno443nameState();
}

class _Pkmno443nameState extends State<Pkmno443Main> {
  late double widthPosition1;
  late double heightPosition1;
  late double widthPosition2;
  late double heightPosition2;
  late double heightPosition3;
  late double height1;
  late double height2;
  late List<String> pkmImg;
  late List<String> pkmName;
  late int current;
  late Timer timer1;

  @override
  void initState() {
    super.initState();
    timer1 = Timer.periodic(Duration(), (timer) {});
    height1 = 0;
    height2 = 0;
    pkmImg = ['443.webp', '444.webp', '445.webp'];
    pkmName = ['딥상어동', '한바이트', '한카리아스'];
    current = 0;
  }

  @override
  void dispose() {
    timer1.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    widthPosition1 = (screenWidth - 393);
    heightPosition1 = (screenHeight / 2 - 20) + height1;
    widthPosition2 = (screenWidth - 250);
    heightPosition2 = (screenHeight / 2 - 171) - height2;
    heightPosition3 = (screenHeight / 2 - 220) - height1;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 800,
              width: 600,
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
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () => {Navigator.pushNamed(context, '/no443')},
                    child: Text(
                      '도감 열기',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: widthPosition1,
              bottom: heightPosition1,
              child: SizedBox(
                height: 230,
                width: 390,

                child: Image.asset('images/case.png', fit: BoxFit.fill),
              ),
            ),
            Positioned(
              left: widthPosition1,
              top: heightPosition2,
              child: SizedBox(
                height: 230,
                width: 390,
                child: Image.asset('images/casedown.png', fit: BoxFit.fill),
              ),
            ),
            Positioned(
              left: widthPosition2,
              top: heightPosition3,
              child: SizedBox(
                height: 100,
                width: 100,
                child: IconButton(
                  onPressed: () => onClick(),
                  icon: Image.asset('images/pokeball.png', fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onClick() {
    Timer.periodic(Duration(milliseconds: 17), (timer) {
      height1 += 10;
      height2 -= 10;

      if (height1 == 500) {
        timer.cancel();
      }
      setState(() {});
    });

    timer1 = Timer.periodic(Duration(seconds: 2), (timer) {
      current++;
      if (current >= pkmImg.length) {
        current = 0;
      }
      setState(() {});
    });
    setState(() {});
  }
}
