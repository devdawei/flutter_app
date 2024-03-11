import 'package:flutter/material.dart';

class CakeInfoPage extends StatefulWidget {
  const CakeInfoPage({super.key});

  @override
  State<CakeInfoPage> createState() => _CakeInfoPageState();
}

class _CakeInfoPageState extends State<CakeInfoPage> {
  @override
  Widget build(BuildContext context) {
    // const titleText = Padding(
    //   padding: EdgeInsets.all(20),
    //   child: Text(
    //     'Strawberry Pavlova',
    //     style: TextStyle(
    //       fontWeight: FontWeight.w800,
    //       letterSpacing: 0.5,
    //       fontSize: 15,
    //     ),
    //   ),
    // );
    final titleText = Container(
      // padding: const EdgeInsets.all(10),
      color: Colors.red,
      child: const Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 15,
        ),
      ),
    );
    const subTitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 10,
      ),
    );
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.green[500],
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
          size: 16,
        ),
        Icon(
          Icons.star,
          color: Colors.green[500],
          size: 16,
        ),
        const Icon(
          Icons.star,
          color: Colors.black,
          size: 16,
        ),
        const Icon(
          Icons.star,
          color: Colors.black,
          size: 16,
        ),
      ],
    );
    final ratings = Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 10,
      height: 2,
    );
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        // padding: const EdgeInsets.all(8),
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.kitchen,
                  color: Colors.green[500],
                ),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );
    String imageLink =
        'https://img2.baidu.com/it/u=1715340838,149884203&fm=253&fmt=auto&app=138&f=JPEG?w=300&h=300';
    return Scaffold(
      appBar: AppBar(
        title: const Text('蛋糕介绍'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 170,
        child: Card(
          child: Row(
            children: [
              SizedBox(
                width: 200,
                child: leftColumn,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  // color: Colors.lightGreen,
                  child: Image.network(
                    imageLink,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
