import 'package:flutter/material.dart';
import 'package:my_flutter_study/widgets/custom_btn.dart';
import '/widgets/text_field.dart';
import '/widgets/welcome_logo.dart';
import '/widgets/welcome_page_title_text.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width/1.1,
          height: size.height/1.2,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: size.width/15,
              vertical: size.height/20,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  titleText(),
                  SizedBox(height: size.height/40,),
                  welComePageLogo(),
                  SizedBox(height: size.height/40,),
                  const TextFromFld(labelTxt: 'User Name:',hintTxt: 'Type Your User Name',),
                  SizedBox(height: size.height/40,),
                  const TextFromFld(labelTxt: 'Password:',hintTxt: 'Type Your User Password',),
                  SizedBox(height: size.height/40,),
                  CustomBTN(
                    btnText: 'Login', 
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}