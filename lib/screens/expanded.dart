import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  // height: 400,
                  decoration: BoxDecoration(
                    // color: Colors.deepPurple,
                    gradient: LinearGradient(
                      begin: const Alignment(0, 0),
                      end: Alignment.topCenter,
                      colors: [
                        Colors
                            .lightBlueAccent, // Blends into the second container
                        Colors.grey.shade300, // Main color
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  // height: 200,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
          Align(
            alignment: const Alignment(0.8, -0.83),
            child: Container(
              alignment: const Alignment(0, 0),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(30),
                shape: BoxShape.circle,
                // border: Border.all(color: Colors.black38, width: 5),
                color: Colors.grey[300],
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.shade500,
                //     offset: const Offset(4.0, 4.0),
                //     blurRadius: 15.0,
                //     spreadRadius: 1.0,
                //   ),
                //   const BoxShadow(
                //     color: Colors.white,
                //     offset: Offset(-4.0, -4.0),
                //     blurRadius: 15.0,
                //     spreadRadius: 1.0,
                //   ),
                // ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Balance'),
                  Text(
                    '\u20A6500.00'.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.4),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 20.0,
                      spreadRadius: 1.0),
                  // BoxShadow(
                  //     color: Colors.grey.shade500,
                  //     offset: const Offset(-4.0, -4.0),
                  //     blurRadius: 20.0,
                  //     spreadRadius: 1.0),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment(0, 0),
          //   child: Card(
          //     child: Row(
          //       children: [
          //         Text('Hello'),
          //         Text('Hello'),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
