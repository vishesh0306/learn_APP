import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class callsPage extends StatefulWidget {
  const callsPage({Key? key}) : super(key: key);

  @override
  State<callsPage> createState() => _callsPageState();
}

class _callsPageState extends State<callsPage> {
  final List<String> callsList = [
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
            itemCount: callsList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 70,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    foregroundImage:
                        AssetImage('lib/images/${communityImage[index % 3]}'),
                  ),
                  title: Text(
                    callsList[index],
                  ),
                  subtitle: Row(
                    children: [
                      Transform.rotate(
                          angle: -3.14 /
                              4, // Rotate by -45 degrees to point south-west
                          child: Icon(
                            Icons.arrow_back,
                            size: 18.0,
                            color: Colors.green,
                          )),
                      Text("Time")
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.videocam, color: Colors.green),
                      SizedBox(width: 8), // Add some space between the icons
                      Icon(Icons.call, color: Colors.green),
                    ],
                  ),

                  iconColor: Colors.white,
                  // onTap: (){},
                ),
              );
            }));
  }
}
