import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: mainpage()
    )
  );
}
class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask me Anything"),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Ballpage(),
    );
  }
}
class Ballpage extends StatefulWidget {
  @override
  State<Ballpage> createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade500,
      child: Center(
        child: TextButton(
          onPressed: (){
            setState(() {
              ballnumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballnumber.png'),
      ),
      ),
    );
  }
}


