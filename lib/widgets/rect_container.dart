// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
class RectContainer extends StatelessWidget {
  final bgColor;
  const RectContainer(this.bgColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
      ),
    );
  }
}