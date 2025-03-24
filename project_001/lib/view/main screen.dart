import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('3조 멤버')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 30),
                      backgroundColor: Colors.pinkAccent,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/EJ'),
                    child: Text(
                      '조장 소개 : 김은준',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 30),
                      backgroundColor: Colors.brown,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/JW'),
                    child: Text(
                      '1번남 : 김재원',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 30),
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/TM'),
                    child: Text(
                      '2번남 : 김태민',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 30),
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/JH'),
                    child: Text(
                      '3번남 : 남정현',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 30),
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/SB'),
                    child: Text(
                      '4번남 : 위성배',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(170, 30)),
                    onPressed: () => Navigator.pushNamed(context, '/main'),
                    child: Text(
                      '뒤로가기',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
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
}
