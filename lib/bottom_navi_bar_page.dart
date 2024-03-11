import 'package:flutter/material.dart';
import 'package:flutter_app/module/home/home_page.dart';
import 'package:flutter_app/module/mall/mall_page.dart';
import 'package:flutter_app/module/message/message_page.dart';
import 'package:flutter_app/module/my/my_page.dart';

class BottomNaviBarPage extends StatefulWidget {
  const BottomNaviBarPage({super.key});

  @override
  State<BottomNaviBarPage> createState() => _BottomNaviBarPageState();
}

class _BottomNaviBarPageState extends State<BottomNaviBarPage> {
  int currentIndex = 0;
  var controller = PageController();

  var items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    const BottomNavigationBarItem(icon: Icon(Icons.local_mall), label: '购物'),
    const BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
        controller: controller,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const HomePage();
          } else if (index == 1) {
            return const MallPage();
          } else if (index == 2) {
            return const MessagePage();
          } else {
            return const MyPage();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: items,
        currentIndex: currentIndex,
        onTap: onTap,
        fixedColor: const Color.fromRGBO(111, 67, 193, 1),
        unselectedFontSize: 10,
        selectedFontSize: 10,
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      controller.jumpToPage(index);
    });
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
