import 'package:flutter/material.dart';
class PageThree extends StatelessWidget {
  final String title;
  const PageThree({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('This is page Three',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold
            ),
            )
          ],
        ),
      ),
    );
  }
}