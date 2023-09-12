import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget chatBox(String heading, String text, String image) {
//   return InkWell(
//     onTap: () {
//       print("hello bhai");
//     },
//     child: Container(
//       // color: Colors.cyan,
//       height: 90,
//       child: Center(
//           child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 8),
//         child: Row(
//           children: [
//             InkWell(
//               child: Padding(
//                 padding: EdgeInsets.only(left: 15, right: 20),
//                 child: CircleAvatar(
//                   radius: 30,
//                   foregroundImage: AssetImage(image),
//                 ),
//               ),
//               onTap: () {
//                 print("hello");
//               },
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text(
//                   heading,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 Text(
//                   text,
//                   style: TextStyle(fontSize: 12),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       )),
//     ),
//   );
// }

class messageTile extends StatelessWidget {
  messageTile({
    super.key,
    required this.images,
    required this.headings,
    required this.text,
    required this.index
  });

  final List<String> images;
  final List<String> headings;
  final List<String> text;
  int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        foregroundImage: AssetImage(images[index]),
      ),
      title: Text(headings[index]),
      subtitle: Text(text[index]),
      trailing: Icon(Icons.push_pin),
    );
  }
}