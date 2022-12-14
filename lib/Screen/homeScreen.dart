import 'package:flutter/material.dart';
import './infoScreen.dart';
import './movementScreen.dart';
import './ReceiptCaptureScreen.dart';

import '../ui/Unit.dart';


class HomeScreen extends StatelessWidget {

  // 개인 정보 프로필 영역
  Widget InfoSection() {
    // TODO 백앤드 연결, 포인트 업데이트
    return SizedBox(
        width: double.infinity,
        height: 80,
        child : Container(
          color: Colors.lightGreenAccent,
          child: MyInfoBar(),
        )
    );
  }

  // 환경 운동 영역
  Widget MovementSection() {
    return SizedBox(
        width: double.infinity,
        height: 140,
        child : Container(
          color: Colors.deepOrangeAccent,
          margin:EdgeInsets.only(top:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 가운데 정렬
            children: [
              MovementBox(title: "플러깅"),
              Spacer(flex: 10,),
              MovementBox(title: "분리수거"),
            ],
          ),
        )
    );
  }

  // 쓰레기가 쌓이는 배경화면 영역
  Widget islandSection() {
    // TODO : 쓰레기 쌓이는 동작 구현
    return SizedBox(
        width: double.infinity,
        height: 460,
        child : Container(
          color: Colors.lightGreenAccent,
          margin:EdgeInsets.only(top:10),
        )
    );
  }

  // 영수증 등록하기 버튼 영역
  Widget ReceiptSection() {
    return SizedBox(
        width: double.infinity,
        height: 90,
        child : Container(
          color: Colors.tealAccent,
          margin:EdgeInsets.only(top:10),
          child: GoReceiptBar(),
        )
    );
  }

  // 전체 홈 화면 구조
  @override
  Widget build(BuildContext context) {
    // TODO: fill home page
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.amber,
          child : Center(
            child: Column(
              children: [
                InfoSection(),
                MovementSection(),
                islandSection(),
                ReceiptSection(),
              ],
            ),
          )
      )
    );
  }
}

// nav to [InfoScreen]
class MyInfoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: TitleText(title:"홍길동",),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoScreen()),
        );
      },
    );
  }
}

// nav to [movementScreen] + title
class MovementBox extends StatelessWidget {
  String title;
  MovementBox({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
        minimumSize: const Size(190, 100),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
        children: [
          TitleText(title:title),
          TitleText(title:"하러가기"),
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MovementScreen(title: title,)),
        );
      },
    );
  }
}


// nav to [ReceiptCaptureScreen]
class GoReceiptBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ReceiptCaptureScreen()),
        );
      },
      icon: Icon(Icons.photo_camera, size: 32,),
      label: TitleText(title:"영수증 등록하기",)
    );
  }
}
