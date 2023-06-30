// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(body: Builder(
      builder: (context) {
        if (_mediaQuery.orientation == Orientation.portrait) {
          return potrait(_mediaQuery.size);
        } else {
          return landscap(_mediaQuery.size);
        }
      },
    ));
  }

  Widget potrait(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Center(
          child: Text(
            'Rotate Phone',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }

  Widget landscap(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Center(
          child: Text(
            'THANK YOU ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
