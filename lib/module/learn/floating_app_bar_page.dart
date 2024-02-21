import 'package:flutter/material.dart';

class FloatingAppBarPage extends StatefulWidget {
  const FloatingAppBarPage({super.key});

  @override
  State<FloatingAppBarPage> createState() => _FloatingAppBarPageState();
}

class _FloatingAppBarPageState extends State<FloatingAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('浮动的顶栏'),
            floating: true,
            // flexibleSpace: Placeholder(),
            // expandedHeight: 200,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('Item #$index')),
            childCount: 100,
          )),
        ],
      ),
    );
  }
}
