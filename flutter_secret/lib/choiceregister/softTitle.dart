import 'package:flutter/material.dart';
import 'package:flutter_secret/choiceregister/circleText.dart';

Widget Soft(){
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
                CircleText('연예인'),
                CircleText('음식'),
                CircleText('반려\n동물'),
                CircleText('취미\n활동'),
                CircleText('영화'),
                CircleText('독서'),
                CircleText('게임'),
                CircleText('여행')
              ],
            ),
          ),
        ),
        Positioned(
          left: 10,top: 50,
          child: CircleTitle('Soft한\n주제'),
        )
      ],
    ),
  );
}