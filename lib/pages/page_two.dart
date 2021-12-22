import 'package:flutter/material.dart';
class PageTwo extends StatelessWidget {
  final String title;
  const PageTwo({Key? key,required this.title}) : super(key: key);

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
            Text('This is page Two',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            )
          ],
        ),
      ),
    );
  }
}