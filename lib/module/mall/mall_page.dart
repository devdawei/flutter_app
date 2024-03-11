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
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fg-search1.alicdn.com%2Fimg%2Fbao%2Fuploaded%2Fi1%2F2209166388654%2FO1CN01AMi8XC2DnaBFiw7Z0_%21%212209166388654.jpg_300x300.jpg&refer=http%3A%2F%2Fg-search1.alicdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1712712816&t=2f0c773e7be444c6552af5a34dd1799f';

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
