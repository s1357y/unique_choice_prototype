import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      home: Profile(),
    );
  }
}
