import 'package:flutter/material.dart';
import 'package:flutter_secret/style/style_form.dart';

// height의 0.48, width의 0.3으로 해보기
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Container(
          height: 600, width: 150,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 30,
                child: Container(// 진영대결 전체 박스
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[500],
                  ),
                  height: 480, width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(height: 15),
                      BuGue(),                 // 부드럽계
                      Container(              // 화살표 아이콘 박스
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        height: 40, width: 40,
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black,
                          size: 42,
                        ),
                      ),
                      DanGue(),
                      Container(
                        child: TextForm_W('일정시간 후\n 마감', 20),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: TextForm_W('진영대결', 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuGue() {
  return Container(
    color: Colors.white,
    width: 150,
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(            // 큰 이미지 아이콘
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextForm_B('부드럽계',23),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0),
              child: CircleImage('images/가위.png', 30)
            ),
            TextForm_B('9999표', 23),
          ],
        ),
        Column(             // 작은 이미지 아이콘
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleImage('images/보.png', 15),
            TextForm_B('4353표', 10),
            SizedBox(height: 18),
            CircleImage('images/바위.png', 15),
            TextForm_B('7989표', 10)
          ],
        )
      ],
    ),
  );
}

Widget DanGue() {
  return Container(
    color: Colors.black,
    width: 150,
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 6.0),
          child: Column(                // 큰 이미지 아이콘
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextForm_W('단단하계', 23),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
                child: CircleImage('images/바위.png', 30)
              ),
              TextForm_W('9569표', 23),
            ],
          ),
        ),
        Column(               // 작은 이미지 아이콘
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleImage('images/보.png', 15),
            TextForm_W('6564표',10),
            SizedBox(height: 18),
            CircleImage('images/가위.png', 15),
            TextForm_W('2132표', 10)
          ],
        )
      ],
    ),
  );
}
