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
                child:
                  Container(
                    child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black,
                                          )
                                      ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                    children:
                                                    [Image(width: 80, image: AssetImage("assets/images/box.png"))]
                                                ),
                                              ),
                                              Expanded(
                                                flex: 8,
                                                child: Column(
                                                    children: [
                                                      Text("종이류", style: TextStyle(fontWeight: FontWeight.bold),),
                                                      Text("물기에 젖지 않도록 하고 반듯하게 펴서 묶어서 배출"),
                                                      Text("비닐 코팅된 표지, 테이프, 공책의 스프링 등은"),
                                                      Text("반드시 제거 후 배출"),
                                                    ]
                                                ),
                                              )
                                            ]
                                          ),
                                        ]
                                      )
                                    )
                                  )
                                ]
                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                            children:
                                                            [Image(width: 80, image: AssetImage("assets/images/milk.png"))]
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 8,
                                                        child: Column(
                                                            children: [
                                                              Text("우유팩", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("내용물을 비우고 물로 헹군 후 펼치거나 압착하여"),
                                                              Text("플라스틱류와 함께 묶어서 배출"),]
                                                        )
                                                      )
                                                    ]
                                                  ),
                                              ]
                                            )
                                        )
                                    )
                                  ]
                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                            children:
                                                            [Image(width: 80, image: AssetImage("assets/images/bottle.png"))]
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 8,
                                                        child: Column(
                                                            children: [
                                                              Text("유리병", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("병 속 이물질을 제거한 후 뚜껑을 분리하여 배출"),
                                                              Text("술병, 음료수병 등 빈용기보증금 대상"),
                                                              Text("유리병은 소매점 등에서 환불"),
                                                            ]
                                                        ),
                                                      )
                                                    ]
                                                  ),
                                                ]
                                            )
                                        )
                                    )
                                  ]
                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                            children:
                                                            [Image(height: 80, image: AssetImage("assets/images/can.png"))]
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 8,
                                                        child:
                                                        Column(
                                                            children: [
                                                              Text("금속 캔", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("담배꽁초 등 이물질을 제거한 후 가능한 압착하여 배출"),
                                                              Text("부탄가스, 살충제 용기 등은"),
                                                              Text("플라스틱 부분을 제거 후 구멍을 뚫어 배출"),
                                                            ]
                                                        ),
                                                      )
                                                    ]
                                                  ),
                                                ]
                                            )
                                        )
                                    )
                                  ]

                              ),
                              Column(
                                  children: [
                                      Container(
                                      decoration: BoxDecoration(
                                      border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                      )
                                      ),
                                      child: Center(
                                      child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child:  Column(
                                                  children: [Image(height: 80, image: AssetImage("assets/images/metal.png"))]),
                                            ),
                                            Expanded(
                                              flex: 8,
                                              child: Column(
                                                  children: [
                                                    Text("고철류", style: TextStyle(fontWeight: FontWeight.bold),),
                                                    Text("이물질이 섞이지 않도록 한 후"),
                                                    Text("봉투에 넣거나 끈으로 묶어 배출"),
                                                  ]
                                              ),
                                            )
                                          ]
                                        ),
                                      ]
                                      )
                                      )
                                      )
                                      ]
                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                          children: [Image(height: 80, image: AssetImage("assets/images/plastic_bottle.png"))],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 8,
                                                        child: Column(
                                                            children: [
                                                              Text("페트병", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("내용물을 깨끗이 비우고 페트병만 분리하여 배출"),
                                                            ]
                                                        ),
                                                      )
                                                    ]
                                                  ),
                                                ]
                                            )
                                        )
                                    )
                                  ]

                              ),
                              Column(
                                  children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black,
                                          )
                                      ),
                                  child: Center(
                                      child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                      children: [
                                                        Image(height: 60, image: AssetImage("assets/images/yogurt.png"))
                                                      ]
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 8,
                                                  child: Column(
                                                      children: [
                                                        Text("요구르트병", style: TextStyle(fontWeight: FontWeight.bold),),
                                                        Text("은박지로 된 병뚜껑을 반드시 제거하여"),
                                                        Text("요구르트병만 모아 배출"),
                                                      ]
                                                  ),
                                                )
                                              ]
                                            ),
                                            ]
                                      )
                                  )
                              )]
                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.black,
                                          )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                            children: [
                                                              Image(height: 60, image: AssetImage("assets/images/plastic.png"))
                                                            ]
                                                        ),
                                                      ),
                                                       Expanded(
                                                         flex: 8,
                                                         child:Column(
                                                             children: [
                                                               Text("플라스틱", style: TextStyle(fontWeight: FontWeight.bold),),
                                                               Text("재활용표시가 되어 있는 플라스틱만 배출"),
                                                               Text("장난감, 문구류, 가전제품, 가구,"),
                                                               Text("옷걸이, 비디오테이프, 고무호스"),
                                                               Text("등의 플라스틱 제품은 일반 쓰레기"),
                                                               Text("및 대형생활 폐기물로 배출"),
                                                             ]
                                                         )

                                                       )

                                                    ]
                                                  )
                                                  ]
                                            )
                                        )
                                    )]

                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                            children: [
                                                              Image(width: 60, image: AssetImage("assets/images/styrofoam.png"))
                                                            ]
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 8,
                                                        child:
                                                        Column(
                                                            children: [
                                                              Text("스티로폼", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("하얀색 스티로폼만 재활용 가능"),
                                                              Text("유색 스티로폼과 이물질이 묻어있거나"),
                                                              Text("착색된 스티로폼은 종량제 봉투에 넣어 배출"),
                                                              Text("부착상표, 비닐 테이프 등이 붙어 있을 경우 수거 불가"),
                                                              Text("타 물질로 코팅된 발포스티렌은 종량제 봉투에 배출"),
                                                            ]
                                                        ),
                                                      )

                                                    ]
                                                  )
                                                  ]
                                            )
                                        )
                                    )]

                              ),
                              Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black,
                                            )
                                        ),
                                        child: Center(
                                            child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                            children: [
                                                              Image(height: 60, image: AssetImage("assets/images/vinyl.png"))
                                                            ]
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 8,
                                                        child: Column(
                                                            children: [
                                                              Text("일회용 비닐", style: TextStyle(fontWeight: FontWeight.bold),),
                                                              Text("라면 봉지, 과자봉지, 세제 봉지 등 "),
                                                              Text("분리배출 표시가 있는 비닐포장재는"),
                                                              Text("속이 보이는 봉투에 넣어 흩어지지 않도록 묶어서 배출"),
                                                              Text("일회용 비닐봉지는 안에 있는"),
                                                              Text("이물질과 물기를 완전히 제거하고 배출"),
                                                            ]
                                                        ),
                                                      )
                                                    ]
                                                  )
                                                ]
                                            )
                                        )
                                    )]

                              ),
                            ]
                    )
                  )
            )
       );
  }
}
