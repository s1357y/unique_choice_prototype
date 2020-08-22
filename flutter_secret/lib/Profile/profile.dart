import 'package:flutter/material.dart';
import 'package:flutter_secret/Profile/ability.dart';
import 'package:flutter_secret/Profile/mycredit.dart';
import 'package:flutter_secret/style/appbar.dart';
import 'package:flutter_secret/style/bottom_navi.dart';
import 'package:flutter_secret/style/style_form.dart';



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool exercise = false;                  // checkbox에 check를 지정해주는 변수
  bool study = false;
  bool donteat = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBarCustom('프로필'),
          body: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Ability(),                    // 레벨 및 경험치, 닉네임부분
                  SizedBox(
                    height: 20,
                  ),
                  MyCredit()                    // 텍스트 리스트
                ],
              ),
              Positioned(                      //체크박스 Stack에 쌓아둠 , 공부 부분
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleText('공부'),
                        Checkbox(
                          activeColor: Colors.black,
                          value: study,
                          onChanged: (_checkboxState) {
                            setState(() {
                              study = _checkboxState;
                            });
                          },
                        )
                      ],
                    ),
                    Column(                      //체크박스 Stack에 쌓아둠 , 운동 부분
                      children: [
                        CircleText('운동'),
                        Checkbox(
                          activeColor: Colors.black,
                          value: exercise,
                          onChanged: (_checkboxState) {
                            setState(() {
                              exercise = _checkboxState;
                            });
                          },
                        )
                      ],
                    ),
                    Column(                      //체크박스 Stack에 쌓아둠 , 금식 부분
                      children: [
                        CircleText('금식'),
                        Checkbox(
                          activeColor: Colors.black,
                          checkColor: Colors.white,
                          value: donteat,
                          onChanged: (_checkboxState) {
                            setState(() {
                              donteat = _checkboxState;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
                bottom: 10,
                right: 10,
              )
            ],
          ),
          bottomNavigationBar: Bot() // style/bootom_navi에 지정
      ),
    );
  }

  Widget CircleText(String text) {
    return Container(
      width: 30,
      height: 30,
      child: CircleAvatar(
          backgroundColor: Colors.white, child: TextForm_B('$text', 15)),
    );
  }
}
