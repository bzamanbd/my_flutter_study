import 'package:flutter/material.dart';
import '/widgets/custom_btn.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
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
          children: [
            CustomBTN(
              btnText: 'goOtherPage', 
              onPressed: (){
                Navigator.of(context).pushNamed('/otherPage').then((value) => print(value));
              }
            )
          ],
        ),
        ),
    );
  }
}