import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          alignment: const Alignment(0, 0),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(30),
            shape: BoxShape.circle,
            // border: Border.all(color: Colors.black38, width: 5),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(5.0, 5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-5.0, -5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Text(
            'Justin'.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
