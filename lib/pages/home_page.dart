import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                 const TextField(
                  decoration: InputDecoration(
                    hintText: 'Type Your Username',
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.0,
                       )
                    ),
                    prefixIcon: Icon(Icons.person,
                    size: 30,
                    color: Colors.deepOrange,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  maxLength: 50,
                ),
                SizedBox(
                height: height/30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Type Your Password',
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    suffix: Icon(Icons.remove_red_eye_sharp,
                    color: Colors.deepOrange,
                    size: 30.0,
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.0,
                       ),
                    ),
                  ),
                  obscureText: true,
                  obscuringCharacter: '#',
                  maxLength: 15,
                ),
                SizedBox(
                  height: height/30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Type Your Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    suffix: Icon(Icons.email_outlined,
                    color: Colors.deepOrange,
                    size: 30.0,
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.0,
                       ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: height / 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Type Your Phone Number',
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    suffix: Icon(Icons.phone_android,
                    color: Colors.deepOrange,
                    size: 30.0,
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 1.0,
                       ),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){}, 
                      child: const Text('Login')
                      ),
                      SizedBox(
                        width: width/30,
                      ),
                    ElevatedButton(
                      onPressed: (){}, 
                      child: const Text('Sign Up')
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}