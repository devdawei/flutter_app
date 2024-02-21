import 'package:flutter/material.dart';
import 'package:flutter_app/app_color.dart';

class LongListViewPage extends StatefulWidget {
  const LongListViewPage({super.key});

  @override
  State<LongListViewPage> createState() => _LongListViewPageState();
}

class _LongListViewPageState extends State<LongListViewPage> {
  final items = List.generate(100, (index) {
    return 'Item $index';
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('长列表'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        // prototypeItem: ,
        // itemExtent: ,
        itemBuilder: (context, index) {
          return ItemWidget(title: items[index]);
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(title: Text(title)),
          ),
          Container(
            height: 1,
            color: AppColor.separator,
          ),
        ],
      ),
    );
  }
}
