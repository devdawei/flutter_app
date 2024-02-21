import 'package:flutter/material.dart';

class SpaceItemPage extends StatefulWidget {
  const SpaceItemPage({super.key});

  @override
  State<SpaceItemPage> createState() => _SpaceItemPageState();
}

class _SpaceItemPageState extends State<SpaceItemPage> {
  final items = List.generate(4, (index) {
    return ItemWidget(text: 'Item $index');
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('元素之间包含间隔'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: items,
            ),
          ),
        );
      }),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}
