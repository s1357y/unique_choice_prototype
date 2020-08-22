import 'package:flutter/material.dart';
import 'package:flutter_secret/style/style_form.dart';

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
