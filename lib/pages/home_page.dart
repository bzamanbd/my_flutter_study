import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detector'),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              // print('button clicked');
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: size.width / 2,
            height: size.height / 8,
            color: Colors.red,
            child: const Text('Click Me',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
            ),
          ),
        ),
      ),
    );
  }
}