import 'package:flutter/material.dart';
import 'package:flutter_secret/choiceregister/circleText.dart';
import 'package:flutter_secret/choiceregister/hardTitle.dart';
import 'package:flutter_secret/choiceregister/softTitle.dart';
import 'package:flutter_secret/style/appbar.dart';
import 'package:flutter_secret/style/bottom_navi.dart';
import 'package:flutter_secret/style/style_form.dart';


class ChoiceRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarCustom('초이스 등록'),         // AppBar를 따로 구현
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row( children: [SizedBox(width: 20), Icon(Icons.fiber_manual_record, color: Colors.white),
            TextForm_W('주제별 초이스 등록', 20)],),
          Soft(),               // Soft한 주제
          Hard()                //  Hard한 주제
        ],
      ),
      bottomNavigationBar: Bot(),   // style폴더의 bottom_navi파일
    );
  }
}

