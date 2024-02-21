import 'package:flutter/material.dart';

class DiffTypeEleListViewPage extends StatefulWidget {
  const DiffTypeEleListViewPage({super.key});

  @override
  State<DiffTypeEleListViewPage> createState() =>
      _DiffTypeEleListViewPageState();
}

class _DiffTypeEleListViewPageState extends State<DiffTypeEleListViewPage> {
  final items = List<ListItem>.generate(1000, (index) {
    if (index % 6 == 0) {
      return HeadingItem('Heading $index');
    } else {
      return MessageItem('Sender $index', 'Message body $index');
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('不同类型元素的列表'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);

  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(sender);
  }

  @override
  Widget buildSubtitle(BuildContext context) {
    return Text(body);
  }
}
