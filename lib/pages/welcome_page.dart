import 'package:flutter/material.dart';
import '/pages/page_one.dart';
import '/pages/page_two.dart';
import '/widgets/custom_btn.dart';
import '/widgets/welcome_logo.dart';
import '/widgets/welcome_page_title_text.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              titleText(),
              SizedBox(height: size.height/10),
              welComePageLogo(),
              SizedBox(height: size.height / 30),
              CustomBTN(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const PageOne(title: 'PageOne')));
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnt)=>const PageOne(title: 'PageOne')));
                },
                btnText: 'Sign In',
              ),
              SizedBox(height: size.height / 70),
              CustomBTN(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (cnt)=>const PageTwo(title: 'PageTwo')));
                },
                btnText: 'Sign Up',
              ),
            ],
          ),
        ),
      )
    );
  }
}