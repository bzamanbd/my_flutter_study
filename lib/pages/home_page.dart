import 'package:flutter/material.dart';
import '/widgets/custom_btn.dart';
import 'other_page.dart';
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: CustomBTN(btnText: 'Go OtherPage',onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(cxt)=>const OtherPage(
            txt: 'I Love Dart',txt2: 'I Love Flutter',
            )));
        },),
      )
    );
  }
}