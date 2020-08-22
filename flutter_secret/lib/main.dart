import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secret/choiceregister/choiceRg.dart';
import 'package:flutter_secret/style/appbar.dart';
import 'package:flutter_secret/style/bottom_navi.dart';
import 'package:flutter_secret/style/style_form.dart';
import 'Profile/profile.dart';
import 'home/jinyoung.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '프로필',
      theme: ThemeData(primaryColorDark: Colors.grey[850]),
      home: Profile(),          // 홈페이지 진영부분 : Home() ,프로필 페이지: Profile() ,
    );
  }
}