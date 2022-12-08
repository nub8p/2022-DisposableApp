import 'package:flutter/material.dart';

// TODO 일회용품 리스트 추출
class DisposableExtractionScreen extends StatelessWidget {
  String inputStream;
  DisposableExtractionScreen({this.inputStream = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DisposableExtractionpage")),
      body: Center(
        child : Container(
          child: Text(inputStream),
        ),
      ),
    );
  }
}
