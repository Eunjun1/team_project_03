import 'package:flutter/material.dart';

class Pkmno396main extends StatefulWidget {
  const Pkmno396main({super.key});

  @override
  State<Pkmno396main> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Pkmno396main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('포켓몬도감'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        toolbarHeight: 80,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Container(
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
                  onPressed: () => Navigator.pushNamed(context, '/no396'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Text('도감보기', style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
