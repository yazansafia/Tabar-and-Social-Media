import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poject4/home.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
