import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class communityPage extends StatefulWidget {
  @override
  State<communityPage> createState() => _communityPageState();
}

class _communityPageState extends State<communityPage> {

  final List<String> listtt = ["ai","bi","ci","di","ei"];
  final List<String> communityName = ["MyCTO","Talented Souls","Elixir"];
  final List<String> communityImage = ["cto.png","talented_souls.png","elixir.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
                    itemCount: communityName.length,
                      itemBuilder: (BuildContext context,int index){
                        return Column(
                          children: [
                            Container(height: 0.3,color: Colors.grey,),
                            Container(height: 300,
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      radius: 30,
                                      foregroundImage: AssetImage('lib/images/${communityImage[index]}'),
                                    ),
                                    title: Text(communityName[index%3]),
                                    subtitle: Text("Welcome to ${communityName[index%3]}"),

                                   iconColor: Colors.white,
                                    // onTap: (){},

                                  ),
                                  Container(height: 0.5,color: Colors.grey,),
                                  ListTile(
                                    // tileColor: Colors.pink,
                                    leading: CircleAvatar(backgroundColor: Colors.greenAccent,foregroundColor: Colors.green[800],
                                      radius: 20,
                                      child: Icon(Icons.volume_up_sharp),
                                    ),
                                    title: Text("Announcements"),
                                    // subtitle: Text(text[index]),
                                    trailing: Icon(Icons.circle,size: 12,color: Colors.green,),


                                  ),
                                  ListTile(
                                    // tileColor: Colors.pink,
                                    leading: CircleAvatar(backgroundColor: Colors.grey,foregroundColor: Colors.white,
                                      radius: 20,
                                      child: Icon(Icons.group_add_rounded),
                                    ),
                                    title: Text(listtt[index]),
                                    // subtitle: Text(text[index]),
                                    trailing: Icon(Icons.circle,size: 12,color: Colors.green,),

                                    // onTap: (){},

                                  ),
                                  ListTile(
                                    // tileColor: Colors.pink,
                                    leading:  Icon(Icons.chevron_right,color: Colors.black,),

                                    title: Text("View all"),
                                    // subtitle: Text(text[index]),

                                    iconColor: Colors.white,
                                    // onTap: (){},

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),

                          ],
                        );
    }
          ),


    );
  }
}
