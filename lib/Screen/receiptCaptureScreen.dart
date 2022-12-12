import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import './disposableExtractionScreen.dart';
import '../ui/Unit.dart';


class ReceiptCaptureScreen extends StatefulWidget {
  const ReceiptCaptureScreen({Key? key}) : super(key: key);

  @override
  _ReceiptCaptureState createState() => _ReceiptCaptureState();
}



// TODO state에 따라 버튼 활성화 기능 구현(127쯤..줄임)
class _ReceiptCaptureState extends State<ReceiptCaptureScreen> {
  File? _image;
  String _parsedtext = "";
  final picker = ImagePicker();

  // 카메라와 갤러리에서 이미지를 가져옴
  Future getImage(ImageSource imageSource) async {
    final imageFile = await picker.pickImage(source: imageSource);

    setState(() {
      _image = File(imageFile!.path); // 가져온 이미지를 _image에 저장
      var bytes = File(imageFile.path.toString()).readAsBytesSync();
      String img64 = base64Encode(bytes);

      ocrImage(img64);
    });
  }

  // OCR 광학 문자 인식
  ocrImage(String img64) async {
    var url = 'https://api.ocr.space/parse/image';
    var payload = {"base64Image": "data:image/jpg;base64,${img64.toString()}","language" :"kor"};
    var header = {"apikey" :"K89030432788957"};

    var post = await http.post(Uri.parse(url),body: payload,headers: header);
    var result = jsonDecode(post.body);

    setState(() {
      _parsedtext = result['ParsedResults'][0]['ParsedText'];

    });
  }


  // 이미지를 보여주는 화면
  Widget showImage() {
    return Container(
        color: const Color(0xffd0cece),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Center(
            child: _image == null
                ? Text('영수증 사진을 찍어주세요.')
                : Image.file(File(_image!.path))));
  }

  // 카메라 버튼
  Widget cameraBtn() {
    return ElevatedButton.icon(
      onPressed: () {
        getImage(ImageSource.camera);
      },
      icon: Icon(Icons.add_a_photo),
      label: TitleText(title: "Camera"),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(190, 50),
      ),
    );
  }

  // 갤러리 버튼
  Widget galleryBtn() {
    return ElevatedButton.icon(
      onPressed: () {
        getImage(ImageSource.gallery);
      },
      icon: Icon(Icons.wallpaper),
      label: TitleText(title: "Gallery"),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(190, 50),
      ),
    );
  }

  // 버튼 모음 바
  Widget captureImageBar() {
    return Container(
      color: Colors.tealAccent,
      margin:EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // 가운데 정렬
        children: [
          cameraBtn(),
          galleryBtn(),
        ],
      ),
    );
  }

  // 디버그용 : ocr 결과 보기
  Widget ocrTextStream() {
    return Container(
        width:double.infinity,
        color: const Color(0xffd0cece),
        height: 100,
        child:
            Center(
              child: _parsedtext == null
              ? Text('OCR')
              : Text(_parsedtext)
            ),
    );
  }

  // TODO 상태에 따라 버튼 활성화 구현(선택)
  Widget stateBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>
              DisposableExtractionScreen(inputStream: _parsedtext,
              )),
        );
      },
      child: _image == null
          ? TitleText(title:"영수증이 업로드되지 않았습니다.",)
          : ( _parsedtext == ""
          ? TitleText(title: "영수증 추출 중...",)
          : TitleText(title: "내가 구입한 일회용품 보러가기",)),
    );
  }

  Widget stateBar() {
    return Container(
        width:double.infinity,
        height: 80,
        margin: EdgeInsets.only(top: 100),
        padding:EdgeInsets.all(10),
        child: stateBtn()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ReceiptCaptureScreen")),
      body: Center(
        child : Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showImage(),
                captureImageBar(),
                stateBar(),
                ocrTextStream()
              ]
          )
        ),
      ),
    );
  }
}