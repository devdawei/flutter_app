import 'package:flutter/material.dart';

class VerticalListViewPage extends StatefulWidget {
  const VerticalListViewPage({super.key});

  @override
  State<VerticalListViewPage> createState() => _VerticalListViewPageState();
}

class _VerticalListViewPageState extends State<VerticalListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('构建与使用列表'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
