import 'package:flutter/material.dart';
import 'package:widget_of_the_day/widgets/circle_widget.dart';
import 'package:widget_of_the_day/widgets/square.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final List _post = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  final List _postColors = [
    Colors.red,
    Colors.grey.shade300,
    Colors.orangeAccent,
    Colors.lightBlueAccent,
    Colors.cyanAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 150,
              child: ListView.builder(
                itemCount: _post.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CircleWidget(
                    child: _post[index],
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _post[index],
                  color: _postColors[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
