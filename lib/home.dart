import 'package:flutter/material.dart';
import 'package:poject4/pages.dart';
import 'pages.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
              child: Row(
            children: [
              Text("pages"),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Pages1();
                      },
                    ));
                  },
                  icon: Icon(Icons.pages))
            ],
          ))
        ],
        title: Row(
          children: [Text("home Page "), Icon(Icons.home)],
        ),
      ),
    );
  }
}
