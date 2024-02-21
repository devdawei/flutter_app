import 'package:flutter/material.dart';

class MallPage extends StatefulWidget {
  const MallPage({super.key});

  @override
  State<MallPage> createState() => _MallPageState();
}

class _MallPageState extends State<MallPage> {
  @override
  Widget build(BuildContext context) {
    double space = 8;
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = (screenWidth - space * 3) / 2;
    double itemHeight = itemWidth + 65;
    double childAspectRatio = itemWidth / itemHeight;
    return Scaffold(
      appBar: AppBar(
        title: const Text('购物'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: space,
          mainAxisSpacing: space,
          childAspectRatio: childAspectRatio,
        ),
        padding: EdgeInsets.all(space),
        itemCount: 100,
        itemBuilder: (context, index) {
          return ItemWidget(index: index);
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.index});

  final int index;

  final String imageLink =
      'https://img0.baidu.com/it/u=2412946534,418122829&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500';

  @override
  Widget build(BuildContext context) {
    Widget priceInfo = Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        const Text(
          '￥',
          style: TextStyle(
            fontSize: 8,
          ),
        ),
        Text(
          '$index',
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );

    Widget bottomInfo = Container(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          const Text(
            '标题标题标题标题标题标题标题标题标题标题标题',
            maxLines: 2,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              priceInfo,
              const Text(
                '500+已购买',
                style: TextStyle(
                  fontSize: 8,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    double radius = 4;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius), // 设置圆角
        boxShadow: [
          BoxShadow(
            // 设置阴影
            color: Colors.black.withOpacity(0.1), // 颜色
            spreadRadius: 0, // 阴影扩散程度
            blurRadius: 3, // 阴影模糊程度
            offset: const Offset(1, 1), // 阴影偏移量
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Column(
          children: [
            Image.network(
              imageLink,
              fit: BoxFit.fitWidth,
            ),
            bottomInfo,
          ],
        ),
      ),
    );
  }
}
