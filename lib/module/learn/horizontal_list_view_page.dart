import 'package:flutter/material.dart';

class HorizontalListViewPage extends StatefulWidget {
  const HorizontalListViewPage({super.key});

  @override
  State<HorizontalListViewPage> createState() => _HorizontalListViewPageState();
}

class _HorizontalListViewPageState extends State<HorizontalListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('横向列表'),
      ),
      body: SizedBox(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
