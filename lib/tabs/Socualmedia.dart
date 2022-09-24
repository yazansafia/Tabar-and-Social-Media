import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

final Uri facebook_url = Uri.parse('https://www.facebook.com');

final Uri Linkedin = Uri.parse('https://www.linkedin.com/feed/');

class Social extends StatelessWidget {
  Social(
      {required this.subtitle,
      required this.title,
      required this.MyFacebookFunction()});
  // اذا نسيت اقواس الفكنشن باي باي
  String? title;
  String? subtitle;
  Function()? MyFacebookFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: MyFacebookFunction,
      child: ListTile(
        title: Text("$title"),
        subtitle: Text("$subtitle"),
        leading: Icon(Icons.facebook),
      ),
    );
  }
}

Future<void> Facebook() async {
  if (!await launchUrl(facebook_url)) {
    throw 'Could not launch $facebook_url';
  }
}

Future<void> Linked() async {
  if (!await launchUrl(Linkedin)) {
    throw 'Could not launch $Linkedin';
  }
}
