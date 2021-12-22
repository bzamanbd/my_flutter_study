import 'package:flutter/material.dart';
class OtherPage extends StatelessWidget {
  final String txt;
  final String txt2;
  const OtherPage({Key? key,required this.txt,required this.txt2}) : super(key: key);
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(txt,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
                ),
                SizedBox(height: size.height/30,),
                
                Text(txt2,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}