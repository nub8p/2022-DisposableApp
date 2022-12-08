import 'package:flutter/material.dart';


// TODO : title에 맞게 환경 운동 페이지 꾸미기
class MovementScreen extends StatelessWidget {
  String title;
  MovementScreen({this.title = ""});

  @override
  Widget build(BuildContext context) {
    // TODO: fill Movement page
    return Scaffold(
      appBar: AppBar(title: Text("Movementpage")),
      body: Center(
        child : Container(
          child: Text("Welcome to $title Movementpage "),
        ),
      ),
    );
  }
}

