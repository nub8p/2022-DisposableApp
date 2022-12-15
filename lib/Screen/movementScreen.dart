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
                    DataColumn(label: Text('이미지', style: TextStyle(fontSize: 12))),
                    DataColumn(label: Text('제목', style: TextStyle(fontSize: 12))),
                    DataColumn(label: Text('일정', style: TextStyle(fontSize: 12))),
                    DataColumn(label: Text('장소', style: TextStyle(fontSize: 12))),
                  ],
                  rows: const <DataRow>[
                    /*여기부터*/
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지", style: TextStyle(fontSize: 12))),
                        DataCell(Text("플로깅1", style: TextStyle(fontSize: 12))),
                        DataCell(Text("2022-12-10", style: TextStyle(fontSize: 12))),
                        DataCell(Text("대전", style: TextStyle(fontSize: 12))),
                      ],
                    ),
                    /*여기까지가 하나의 row*/
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지", style: TextStyle(fontSize: 12))),
                        DataCell(Text("플로깅2", style: TextStyle(fontSize: 12))),
                        DataCell(Text("2022-12-11", style: TextStyle(fontSize: 12))),
                        DataCell(Text("서울", style: TextStyle(fontSize: 12))),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지", style: TextStyle(fontSize: 12))),
                        DataCell(Text("플로깅3", style: TextStyle(fontSize: 12))),
                        DataCell(Text("2022-12-15", style: TextStyle(fontSize: 12))),
                        DataCell(Text("청주", style: TextStyle(fontSize: 12))),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("이미지", style: TextStyle(fontSize: 12))),
                        DataCell(Text("플로깅4", style: TextStyle(fontSize: 12))),
                        DataCell(Text("2022-12-20", style: TextStyle(fontSize: 12))),
                        DataCell(Text("공주", style: TextStyle(fontSize: 12))),
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}
