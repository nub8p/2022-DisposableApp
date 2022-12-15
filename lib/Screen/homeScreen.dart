import 'package:flutter/material.dart';
import './infoScreen.dart';
import './movementScreen.dart';
import './movementScreen2.dart';
import './ReceiptCaptureScreen.dart';

import '../ui/Unit.dart';


class HomeScreen extends StatelessWidget {
  List<String> inputStream;
  String inputLine = "";
  HomeScreen(this.inputStream) {
    for(int i = 0; i < inputStream.length; i++){
      inputLine += inputStream[i];
    }
  }



  // 개인 정보 프로필 영역
  Widget InfoSection() {
    // TODO 백앤드 연결, 포인트 업데이트
    return SizedBox(
        width: double.infinity,
        height: 80,
        child : Container(
          //color: Colors.lightGreenAccent,
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
          margin:EdgeInsets.only(top:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 가운데 정렬
            children: [
              Plogging(title: "플로깅"),
              Spacer(flex: 10,),
              Recycling(title: "분리수거"),
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
        height: 300,
        child : Container(
          //color: Colors.lightGreenAccent,
          margin:EdgeInsets.only(top:10),
          child:showTrash()
        )
    );
  }

  String matchingTrash(String trash) {
    String ret = 'default';
    switch (trash) {
      case '플라스틱':
        ret = 'plastic'; break;
      case '캔':
        ret = 'can'; break;
      case '종이류':
        ret = 'paper'; break;
      default:
        break;
    }
    return ret + '_icon.png';
  }

  Widget showTrash() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: inputStream.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
            child: Row(
              children: [
                Image.asset('assets/images/' + matchingTrash(inputStream[index])),
                //Text(inputStream[index])
              ],
            )
        );
      },
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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background1.png'), // 배경 이미지
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(backgroundColor: Colors.cyan, title: Text("Homepage"),),
          body: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
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
      ),
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
class Plogging extends StatelessWidget {
  String title;
  Plogging({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
        minimumSize: const Size(170, 100),
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

class Recycling extends StatelessWidget {
  String title;
  Recycling({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(170, 100),
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
          MaterialPageRoute(builder: (context) => MovementScreen2(title: title,)),
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
