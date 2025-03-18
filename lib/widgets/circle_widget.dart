import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final String child;
  const CircleWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink.shade300,
        ),
        child: Align(
            alignment: const Alignment(0, 0),
            child: Text(
              child,
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
