// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
class RectContainer extends StatelessWidget {
  final bgColor;
  final String title;
  const RectContainer(this.bgColor,this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
      ),
      child: Center(child: Text(title,style: const TextStyle(fontSize: 20.0),)),
    );
  }
}