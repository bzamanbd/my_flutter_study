// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final bgColor;
  final double cwidth;
  final double cheight;
  final String title;
   const CustomContainer(this.bgColor,this.title,this.cwidth,this.cheight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cwidth,
      height: cheight,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: bgColor,
      ),
      child: Center(child: Text(title,style: const TextStyle(fontSize: 16.0),)),
    );
  }
}