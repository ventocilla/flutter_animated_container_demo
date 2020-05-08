import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(title: 'Animated Container', home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width = 300;
  double height = 300;
  double changeXasis = 0;
  double rotateY = 0;
  double rotateX = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            AnimatedContainer(
                transform: Matrix4.translationValues(changeXasis, 0, 0)..rotateX(rotateX)..rotateY(rotateY),
                duration: Duration(milliseconds: 250),
                color: Colors.lightBlueAccent,
                width: width,
                height: height,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  height = height -100;
                  width = width - 100;
                  changeXasis += 20;
                  rotateX += 0.3;
                  rotateY += 0.3;
                });
              },
              child: Text(
                'Change It',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
