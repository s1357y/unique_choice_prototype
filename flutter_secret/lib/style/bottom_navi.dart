import 'package:flutter/material.dart';

Widget Bot (){
  return BottomNavigationBar(
    elevation: 0,
    type: BottomNavigationBarType.fixed,
    iconSize: 10,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Image.asset('images/메인 아이콘.png', color: Colors.black,scale: 3,),
          title: Text('메인', style: TextStyle(color: Colors.black),)
      ),
      BottomNavigationBarItem(
          icon: Image.asset('images/초이스픽 아이콘.png', color: Colors.black,scale: 3,),
          title: Text('초이스픽', style: TextStyle(color: Colors.black),)
      ),
      BottomNavigationBarItem(
          icon: Image.asset('images/초이스등록 아이콘.png', color: Colors.black,scale: 3,),
          title: Text('초이스등록', style: TextStyle(color: Colors.black),)
      ),
      BottomNavigationBarItem(
          icon: Image.asset('images/진영대결 아이콘.png', color: Colors.black,scale: 3,),
          title: Text('진영대결', style: TextStyle(color: Colors.black),)
      )
    ],
  );
}