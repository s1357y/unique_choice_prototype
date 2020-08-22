import 'package:flutter/material.dart';
import 'package:flutter_secret/style/style_form.dart';

Widget AppBarCustom(String text){
  return PreferredSize(
    preferredSize: Size.fromHeight(35),
    child: AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          TextForm_B('$text', 12)
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
  );
}