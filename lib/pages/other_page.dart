import 'package:flutter/material.dart';
class OtherPage extends StatelessWidget {
  final String txt;
  const OtherPage({Key? key,required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Data from HomePage'),
        centerTitle: true,
      ),
      body: 
      SafeArea(
        child: Center(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(color: Colors.green[800]),
            alignment: Alignment.center,
            child: Text(txt,
            style: const TextStyle(
              fontSize: 28.0,
              fontStyle: FontStyle.normal,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
            ),
          ),
        ),
      ),
    );
  }
}