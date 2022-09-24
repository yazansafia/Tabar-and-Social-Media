import 'package:flutter/material.dart';

class Phons1 extends StatelessWidget {
  Phons1({required this.image, required this.subtitle, required this.title});
  String? image;
  String? title;

  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image(image: NetworkImage("$image")),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text("$title"),
              subtitle: Text("$subtitle"),
            ),
            Divider(height: 10, color: Colors.grey)
          ],
        ));
  }
}
