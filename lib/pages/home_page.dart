import 'package:flutter/material.dart';
import 'package:my_flutter_study/widgets/custom_btn.dart';
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
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
              btnText: 'go PageOne', 
              onPressed: (){
                Navigator.of(context).pushNamed('/pageOne');
              }
            ),
            SizedBox(height:size.height/40,),
            CustomBTN(
              btnText: 'go PageTwo', 
              onPressed: (){
                Navigator.of(context).pushNamed('/pageTwo');
              }
            ),
            SizedBox(
              height: size.height / 40,
            ),
            CustomBTN(
              btnText: 'go PageThree', 
              onPressed: (){
                Navigator.of(context).pushNamed('/pageThree');
              }
              )
          ],
        ),
      ),
    );
  }
}