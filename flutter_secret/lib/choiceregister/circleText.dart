import 'package:flutter/material.dart';
import 'package:flutter_secret/style/style_form.dart';

Widget CircleText(String text) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Container(
      width: 100,
      height: 100,
      child: CircleAvatar(
          backgroundColor: Colors.white, child: TextForm_B('$text', 20)),
    ),
  );
}

Widget CircleTitle(String text) {
  return Container(
    width: 130,
    height: 130,
    child: CircleAvatar(
        backgroundColor: Colors.white, child: TextForm_B('$text', 30)),
  );
}