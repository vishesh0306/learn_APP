import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_app/Screens/screen_builder.dart';
import 'constants.dart';
import 'Screens/screen_builder.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(Myapp());
}


class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenBuilder()

    );
  }
}




