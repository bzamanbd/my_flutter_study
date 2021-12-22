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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('This is Page One',style: TextStyle(
              fontSize: 23,
              fontWeight:FontWeight.bold,
            ))
          ],
        ),
      ),
    );
  }
}