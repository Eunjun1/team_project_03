import 'package:flutter/material.dart';

class SbScreen extends StatelessWidget {
  const SbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 183, 101),
      appBar: AppBar(
        title: Text(
          "4번남 소개",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 166, 55, 213),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                "images/pig.jpg",
                width: 200,
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "이름 : 위성배",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "나이 : 1992년생(34)",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "사는곳 : 서초구 양재동",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
              child: Text(
                "전공 : 외식경영",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 30),
              child: Text(
                "'비전공자라 열심히 하겠습니다. 화이팅'",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context), 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 166, 55, 213),
                ),
                child: Text("메인으로",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}