import 'package:flutter/material.dart';
import 'package:flutter_secret/Profile/ability.dart';
import 'package:flutter_secret/style/bottom_navi.dart';
import 'package:flutter_secret/style/style_form.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool exercise = false;
  bool study = false;
  bool donteat = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 1,
              title: Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  TextForm_B('프로필', 12)
                ],
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Ability(),
                  SizedBox(
                    height: 20,
                  ),
                  MyCredit()
                ],
              ),
              Positioned(                      //체크박스 Stack에 쌓아둠
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
                    Column(
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
                    Column(
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

  Widget MyCredit() {
    return Container(
      height: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28), color: Colors.grey[850]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          VarList('내가 등록한 초이스 개수 : 7개'),
          VarList('내가 픽한 초이스 개수 : 387개'),
          VarList('내가 보유한 Unique Credit : 3,000,000 UC'),
          VarList('나의 소속진영 : 단단하계(hard) 진영'),
          VarList('나의 소속분파 : 입시준비 파'),
          VarList('오늘 스톱 워치 : 09:47:06')
        ],
      ),
    );
  }

  Row VarList(String text) {          // 프로필 정보들
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left : 5),
          child: Icon(
            Icons.fiber_manual_record,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        TextForm_W(text, 20)
      ],
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
