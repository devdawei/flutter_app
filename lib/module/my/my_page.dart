import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    double headerHeight = 300;
    Widget headerInfo = Container(
      color: Colors.grey,
      height: headerHeight,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            top: -MediaQuery.of(context).padding.top,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: headerHeight,
              child: Image.asset(
                'images/lake.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
                radius: 40,
              ),
              SizedBox(height: 2),
              Text(
                '名称',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );

    return SafeArea(
      top: false,
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('我的'),
        // ),
        body: SafeArea(
          top: false,
          child: ListView(
            children: <Widget>[
              headerInfo,
            ],
          ),
        ),
      ),
    );
  }
}
