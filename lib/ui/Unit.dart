import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  String title;

  TitleText({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
    );
  }
}