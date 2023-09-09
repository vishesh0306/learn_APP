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
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  top: true,
                  sliver: SliverAppBar(
                    backgroundColor: Colors.teal,
                    pinned: true,
                    floating: true,
                    snap: true,
                    title: Text("Mera WhatsApp"),
                    bottom: TabBar(
                      isScrollable: false,
                      indicatorColor: Colors.white,
                      indicatorWeight: 3,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.groups),
                          // text: "Home",
                        ),
                        Tab(
                          // icon: Icon(Icons.star),
                          text: "Chats",
                        ),
                        Tab(
                          // icon: Icon(Icons.face),
                          text: "Status",
                        ),
                        Tab(
                          // icon: Icon(Icons.settings),
                          text: "Calls",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
            body: TabBarView(
              children: [
                buildPage('Home Page', Colors.green),
                ChatPage(),
                buildPage('Profile Page', Colors.pink),
                buildPage('Settings Page', Colors.yellow),
              ],
              // children: [
              //   buildPage('Home Page', Colors.green),
              //   ChatPage(),
              //   buildPage('Profile Page', Colors.pink),
              //   buildPage('Settings Page', Colors.yellow),
              // ],
            ),
          ),
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
