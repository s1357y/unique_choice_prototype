import 'package:flutter/material.dart';

Text TextForm_B(String text, double size){
  return Text('$text', style: TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: size));
}

Text TextForm_W(String text, double size){
  return Text('$text', style: TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: size));
}


Widget CircleImage(String image, double radius){
  return  CircleAvatar(
    radius: radius,
    backgroundImage: AssetImage('$image'),
  );
}