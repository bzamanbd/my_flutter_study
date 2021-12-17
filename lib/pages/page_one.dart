import 'package:flutter/material.dart';
class PageOne extends StatelessWidget {
  final String title;
  const PageOne({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('This is Page One'),
      ),
    );
  }
}