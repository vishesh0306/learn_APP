import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chats.dart';

import '../constants.dart';

class ScreenBuilder extends StatefulWidget {
  const ScreenBuilder({Key? key}) : super(key: key);

  @override
  State<ScreenBuilder> createState() => _ScreenBuilderState();
}

class _ScreenBuilderState extends State<ScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          // appBar: appbar,
          body: nestedScrollView
        ));
  }
}

Widget buildPage(String text, Color color) {
  return Scaffold(
    backgroundColor: color,
    body: Center(
      child: Text(text,style: TextStyle(fontSize: 30),),
    ),
  );
}
