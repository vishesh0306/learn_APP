import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  final List<String> statusList = [
    "Shivangi",
    "Ashutosh",
    "Harsh",
    "Abhinav",
    "Sanskar",
    "Anshika"
  ];
  final List<String> communityImage = [
    "cto.png",
    "talented_souls.png",
    "elixir.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: statusList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 70,
                child: ListTile(
                  leading: Stack(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('lib/images/${communityImage[index % 3]}'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 8,
                        // You can adjust the radius and size as needed
                      ),
                    ),
                  ]),
                  title: Text(statusList[index]),

                  iconColor: Colors.white,
                  // onTap: (){},
                ),
              );
            }));
  }
}
