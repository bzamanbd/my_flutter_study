import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key); 

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count =0;
  
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    
                    ),
                  ),
                  hintText: 'Enter Your Email',
                  labelText: 'E-mail',
                  labelStyle: TextStyle(fontSize: 24, color: Colors.purple
                ),
              )
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  labelText: 'Password',
                  
                  labelStyle: TextStyle(fontSize: 24, color: Colors.purple
                ),
              )
              ),
              
              ],
          ),
        ),
      )
    );
  }
}