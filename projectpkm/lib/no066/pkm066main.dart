import 'package:flutter/material.dart';

class Pkm066main extends StatefulWidget {
  const Pkm066main({super.key});

  @override
  State<Pkm066main> createState() => _Pkm066mainState();
}

class _Pkm066mainState extends State<Pkm066main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/066.png',width: 300,),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('알통몬',style: TextStyle(fontSize: 40,color: Colors.white)),
              ),
              ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/no066'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white
                    ), 
                    child: Text('도감보기',
                    style: TextStyle(fontSize: 40),)
                  )
            ],
          ),
        ),
      ),
    );
  }
}