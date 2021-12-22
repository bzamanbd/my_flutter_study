import 'package:flutter/material.dart';
import '/widgets/custom_btn.dart';
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
      body:Center(
        child: CustomBTN(
          btnText: 'Go Back', 
          onPressed: (){
            Navigator.pop(context);
          }),
      ),
    );
  }
}