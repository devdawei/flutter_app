import 'package:flutter/material.dart';

class AppNavigator {
  static push(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}
