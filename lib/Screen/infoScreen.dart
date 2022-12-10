import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}


// TODO 개인 프로필과 배경 화면 설정 페이지
class _InfoState extends State<InfoScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: fill info page
    return Scaffold(
      appBar: AppBar(title: Text("개인정보")),
      body: Center(
        child : Container(
          child: Text("Welcome to Infopage"),
        ),
      ),
    );
  }
}

