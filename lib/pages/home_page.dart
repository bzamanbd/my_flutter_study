import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell'),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar:,
      // bottomSheet: ,
      body: InkWell(
        child: Center(
          child: Container(
            width: size.width / 2.0,
            height: size.height / 8.0,
            color: Colors.green,
            child: const Center(
              child: Text('Click Me',
              textAlign: TextAlign.center,
              ),
      
            ),
          ),
        ),
        onTap: (){
          setState(() {
            print('button is clicked');
          });
        },
      ),
    );
  }
}