import 'package:flutter/material.dart';


// TODO : 플로깅하러가기
class MovementScreen extends StatelessWidget {
  String title;
  MovementScreen({this.title = ""});
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
            child: Column(
              children: [
                PloggingImg(),
                PlogList(),
              ]
            )
          )
    );
  }
}


class PloggingImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset('assets/images/plogging.png'),
    );
  }
}

class PlogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: (
            Container(
                child:
                DataTable(
                  headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.cyan),
                  columns: [
                    DataColumn(label: Text('이미지')),
                    DataColumn(label: Text('제목')),
                    DataColumn(label: Text('일정')),
                    DataColumn(label: Text('장소')),
                  ],
                  rows: const <DataRow>[
                    /*여기부터*/
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지")),
                        DataCell(Text("플로깅1")),
                        DataCell(Text("2022-12-10")),
                        DataCell(Text("대전")),
                      ],
                    ),
                    /*여기까지가 하나의 row*/
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지")),
                        DataCell(Text("플로깅2")),
                        DataCell(Text("2022-12-11")),
                        DataCell(Text("서울")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지")),
                        DataCell(Text("플로깅3")),
                        DataCell(Text("2022-12-15")),
                        DataCell(Text("청주")),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지")),
                        DataCell(Text("플로깅4")),
                        DataCell(Text("2022-12-20")),
                        DataCell(Text("공주")),
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}
