import 'package:flutter/material.dart';

class JHScreen extends StatelessWidget {
  const JHScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 209, 113),
      appBar: AppBar(
        title: Text('3번남 : 남정현'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'images/cat.jpg',
                width: 200,
                height: 200,
              ),
            ),
            //Divider(color: const Color.fromARGB(255, 181, 74, 3)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '이름 : 남정현',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '생년월일 : 1998.02.27',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '사는곳 : 경기도 의왕시',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '학과 : 경제금융학부',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),           
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '병역 : 육군(만기전역)',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '" 비전공자도 할 수 있습니다!! "',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('메인으로'),
            ),
          ],
        ),
      ),
    );
  }
}