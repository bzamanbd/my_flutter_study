// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
class ListTileTitle extends StatelessWidget {
  final String title;
  const ListTileTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20.0
      ),
      );
  }
}