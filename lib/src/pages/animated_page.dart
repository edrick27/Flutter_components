import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _heigth = 50.0;
  double _duration = 0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animaciones"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration( seconds:  1 ),
          curve: Curves.fastOutSlowIn,
          // curve: Curves.elasticInOut,
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_filled),
          onPressed: _cambiarForma,
      ),
    );
  }

  _cambiarForma() {

    final radom = Random();
 
    setState(() {
      _width = radom.nextInt(300).toDouble();
      _heigth = radom.nextInt(300).toDouble();
      _color = Color.fromARGB(
        radom.nextInt(255), 
        radom.nextInt(255), 
        radom.nextInt(255), 
        1
      );
      _borderRadius = BorderRadius.circular( radom.nextInt(100).toDouble() );
    });
  }
}
