import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Center(
          child: Text("Hey there!", style: TextStyle(fontSize: 24)),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangeColor()),
        ),
      ),
    );
  }
}

Color tmpFunction() {
  Random randomizer = new Random();
  return Color.fromARGB(randomizer.nextInt(256), randomizer.nextInt(256),
      randomizer.nextInt(256), randomizer.nextInt(256));
}

class ChangeColor extends StatefulWidget {
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: tmpFunction(),
      body: InkWell(
        child: Center(
          child: Text("Hey there!", style: TextStyle(fontSize: 24)),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangeColor()),
        ),
      ),
    ));
  }
}
