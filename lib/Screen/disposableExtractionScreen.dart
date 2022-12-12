import 'package:flutter/material.dart';
import '../ui/Unit.dart';
import './homeScreen.dart';
import 'dart:math';

// TODO 일회용품 리스트 추출
class DisposableExtractionScreen extends StatelessWidget {
  String inputStream;
  DisposableExtractionScreen({this.inputStream = ""});
  final List<String> trash = <String>['종이류', '플라스틱', '캔', '기타'];

  List<String> Disposable = <String>[];

  saveDis(int index) {
    Disposable.add(trash[index]);
    return trash[index];
  }

  Widget listViewDis() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(8),
        itemCount: Random().nextInt(2)+2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            alignment: Alignment.center,
            child: Text('${saveDis(Random().nextInt(4))}'),
          );
        });
  }

  Widget listContainer() {
    return Container(
      width: double.infinity,
      height: 600,
      color: Colors.black12,
      padding: EdgeInsets.all(20),
      child:listViewDis()
    );
  }
  Widget showList() {
    return Column(
      children: [
        TitleText(title: "일회용품 리스트",),
        listContainer()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DisposableExtractionpage")),
      body: Center(
        child : Container(
          width: double.infinity,
          child: Column(
            children: [
              showList(),
                ElevatedButton(
                child: TitleText(title:"다음",),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              )
            ],
          )
        ),
      ),
    );
  }
}
