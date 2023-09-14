import 'package:flutter/material.dart';
import 'package:learn_app/models/chatbox.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}
class _ChatPageState extends State<ChatPage> {
  late String newName = '';
  late String newMessage = '';

  final List<String> headings = <String>['My Talented Souls', 'MyCTO', 'Elixir'];
  final List<String> text = <String>['for talented people', 'MyCTO', 'elixir-the-tech-community'];
  final List<String> images = <String>["cto.png","talented_souls.png","elixir.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView.builder(
            itemCount: headings.length,
            itemBuilder: (BuildContext context, int index) {
              return
                messageTile(images: images, headings: headings, text: text,index: index,);
                // chatBox("mycto", "hey", 'lib/images/cto.png');
                // chatBox(headings[index], text[index], images[index]);


              // ListView(
              //
              //   // itemBuilder: (BuildContext context, int index) { return chatBox("kshitiz","hello","lib/images/dudejaJI.png");},
              //   children: [
              //     chatBox("My Talented Souls","Welcome to My talented Souls","lib/images/dudejaJI.png"),
              //     chatBox("MyCTO","Welcome to MyCTO","lib/images/dudejaJI.png"),
              //     chatBox("My Talented Souls","Welcome to My talented Souls","lib/images/dudejaJI.png"),
              //   ],
              // ),
              // );

            }),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.teal,
        onPressed: () {
          setState(() {
            // headings.add("$newName");
            // text.add("$newMessage");
            // images.add("lib/images/shivangi.png");
            showModalBottomSheet(
                context: context,
                builder: (context) => AddContactScreen(
                      onSave: (name, message) {
                        setState(() {
                          newName = name; // Update newName variable
                          newMessage = message; // Update newMessage variable

                          headings.add(name);
                          text.add(message);
                          images.add("lib/images/shivangi.png");
                        });
                      },
                    ));
          });
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}



class AddContactScreen extends StatefulWidget {
  final Function(String, String) onSave;

  AddContactScreen({required this.onSave});

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  TextEditingController newNameController = TextEditingController();
  TextEditingController newMessageController = TextEditingController();
  var message;
  var name;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Contacts",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                  hintText: "Add Name",
                  hintStyle: TextStyle(color: Colors.grey)),
              controller: newNameController,
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.teal,
                decoration: InputDecoration(
                    hintText: "Add 1st message",
                    hintStyle: TextStyle(color: Colors.grey)),
                controller: newMessageController),
            TextButton(
                onPressed: () {
                  setState(() {
                    name = newNameController.text;
                    message = newMessageController.text;
                    widget.onSave(name,
                        message); // Call the callback function to pass data back
                    Navigator.pop(context); // Close the bottom sheet

                    // headings.add("$name");
                    // text.add("$message");
                    // images.add("lib/images/shivangi.png");
                    print("$name");
                  });
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal))),
          ],
        ),
      ),
    );
  }
}

