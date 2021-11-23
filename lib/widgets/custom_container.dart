

// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final bgColor;
  // final double cwidth;
  // final double cheight;
  final String title;
    const CustomContainer(this.bgColor,this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: cwidth,
      // height: cheight,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: bgColor,
      ),
      child: Center(child: Text(title,style: const TextStyle(fontSize: 16.0),)),
    );
  }
}