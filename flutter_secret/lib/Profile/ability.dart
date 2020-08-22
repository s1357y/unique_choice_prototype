import 'package:flutter/material.dart';
import 'package:flutter_secret/style/style_form.dart';

Widget Ability() {            //캐릭터 정보
  return Container(
    height: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      color: Colors.grey[850],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(             //레벨
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              child: CircleAvatar(
                  backgroundColor: Colors.white, child: TextForm_B('LV', 50)),
            ),
            TextForm_W('87', 35),
            Row(
              children: [
                TextForm_W('EXP : ', 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.black,
                  ),
                  width: 80,
                  height: 20,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white),
                        width: 40,
                        height: 20,
                      ),
                      Positioned(
                        left: 10,
                        top: 5,
                        child: TextForm_B('45%', 10),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ), // 레벨 끝
        FittedBox(              // 캐릭터 이미지
            fit: BoxFit.fill,
            child: Stack(
              children: [
                Icon(
                  Icons.account_box,
                  size: 140,color: Colors.white,),
                Positioned(
                  bottom: 10, right: 10,
                    child: CircleImage('images/가위.png', 20))
              ],
            )
        ),
        Container(              // 닉네임
          child: TextForm_W('남자는 정시 님', 20),
        )
      ],
    ),
  );
}
