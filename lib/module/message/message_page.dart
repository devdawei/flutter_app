import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final items = List.generate(100, (index) {
    return 'Item $index';
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('消息'),
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
    Widget rightInfo = Expanded(
      child: Container(
        // color: Colors.orange,
        height: 55,
        padding: const EdgeInsets.only(right: 8),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('标题标题标题'),
                Text('3:23'),
              ],
            ),
            Text('内容内容内容内容内容内容内容内容'),
          ],
        ),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 44,
        ),
        rightInfo,
      ],
    );
  }
}
