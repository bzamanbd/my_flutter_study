import 'package:flutter/material.dart';
import 'package:my_flutter_study/widgets/custom_btn.dart';
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

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
        child: CustomBTN(
          btnText: 'go otherPage', 
          onPressed: (){
            Navigator.of(context).pushNamed('/other',arguments: 
            {
              'name':'Md. Bodiuzzaman Ripon',
              'phone':01971556799,
              'address':'Jhenaidah'
            }
            );
          }
          ),
        ),
    );
  }
}