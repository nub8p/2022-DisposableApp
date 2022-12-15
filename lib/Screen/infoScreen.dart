import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}


// TODO 개인 프로필과 배경 화면 설정 페이지
class _InfoState extends State<InfoScreen> {
  int point = 200;

  Widget UserProfil() {
    return Image(width: 150,
        image: AssetImage("assets/images/profil.png"));
  }
  Widget UserPoint() {
    return Text('포인트 : ' + point.toString() + 'P',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold)
    );
  }
  Widget UserName() {
    return Text('이름 : 홍길동',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold)
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: fill info page
    return Scaffold(
      appBar: AppBar(title: Text("개인정보")),
      body:  Container(
          width: double.infinity,
          height: 200,
          margin: EdgeInsets.all(20),
          color: Colors.lightBlueAccent,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  width: 180,
                  margin: EdgeInsets.all(20),
                  child: UserProfil(),
                ),
                Container(
                  width: 200,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UserName(),
                        UserPoint(),
                      ]
                  ),
                )

              ]
          )
      ),
    );
  }
}

