import 'package:flutter/material.dart';
import 'package:widget_of_the_day/square.dart';

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
      body: ListView.builder(
          itemCount: _post.length,
          itemBuilder: (context, index) {
            return MySquare(
              child: _post[index],
              color: _postColors[index],
            );
          }),
    );
  }
}
