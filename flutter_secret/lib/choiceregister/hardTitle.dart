import 'package:flutter/material.dart';
import 'package:flutter_secret/choiceregister/circleText.dart';

Widget Hard(){
  return Container(
    height: 230,
    child: Stack(
      children: [
        Positioned(
          top: 20, left: 70,
          child: Container(
            height: 200, width: 500,
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(70)
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 40,),
                CircleText('학업\n진로'),
                CircleText('직장\n문제'),
                CircleText('가정\n문제'),
                CircleText('연애\n문제'),
                CircleText('종교'),
                CircleText('정치'),
                CircleText('코로나'),
                CircleText('경제\n문제')
              ],
            ),
          ),
        ),
        Positioned(
          left: 10,top: 50,
          child: CircleTitle('hard한\n주제'),
        )
      ],
    ),
  );
}