import 'package:flutter/material.dart';


// TODO : 분리수거하러가기
class MovementScreen2 extends StatelessWidget {
  String title;
  MovementScreen2({this.title = ""});
  @override
  Widget build(BuildContext context) {
    // TODO: fill Movement page
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.cyan, title: Text("${title} 하러가기"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body:
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:  Text('분리수거하자')
       )
    );
  }
}
