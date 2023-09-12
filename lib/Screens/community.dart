import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class communityPage extends StatefulWidget {
  const communityPage({Key? key}) : super(key: key);

  @override
  State<communityPage> createState() => _communityPageState();
}

class _communityPageState extends State<communityPage> {

  final List<String> listtt = ["ai","bi","ci","di","ei"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            ListView.builder(
              itemCount: listtt.length,
                itemBuilder: (BuildContext context,int index){
                  return Container(height: 200,
                    child: Center(
                      child: ListTile(tileColor: Colors.pink,
                        leading: CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.group_add_rounded),
                        ),
                        title: Text(listtt[index]),
                        // subtitle: Text(text[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.push_pin),
                          onPressed: () {setState(() {
                            print("namaste");
                          });
                          },
                        ),
                       iconColor: Colors.white,
                        // onTap: (){},

                      ),
                    ),
                  );
    }
      ),
        ),

    );
  }
}
