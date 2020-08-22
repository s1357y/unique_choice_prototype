import 'package:flutter/material.dart';
import 'package:flutter_secret/Profile/varlist.dart';

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
