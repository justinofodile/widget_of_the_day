import 'package:flutter/material.dart';

class MySquare extends StatefulWidget {
  MySquare({super.key, required this.color, required this.child});

  Color color;
  String child;

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 250,
        color: widget.color,
        child: Align(
          alignment: Alignment(0.6, -0.6),
          child: Text(
            widget.child,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
