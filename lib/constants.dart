import 'package:flutter/material.dart';

final appbar = AppBar(
  title: Text("WhatsApp"),
// centerTitle: true,
//   titleSpacing: 5,
//   leading: SizedBox(width: 2,height: 1,),
  // shape: RoundedRectangleBorder(s
  //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
  // leading: IconButton(
  //   onPressed: () {
  //     print("hello");
  //   },
  //   icon: Icon(Icons.menu),
  // ),
  actions: [
    IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
  ],
  elevation: 3,
  // flexibleSpace: Container(
  //   decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //     colors: [Colors.red, Colors.purple],
  //     begin: Alignment.topLeft,
  //     end: Alignment.bottomRight,
  //   )),
  // ),
  backgroundColor: Colors.teal,
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
);
