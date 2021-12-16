import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _cbValue=false; 
  void cbMethod(status){
    setState(() {
      _cbValue=status;
    });
  }
  bool _cbValue2=false;
  bool _cbValue3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: const TextStyle(
          fontSize: 20.0
        ),
        ),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _cbValue, 
              onChanged: cbMethod,
              ),
            Checkbox(
              value: _cbValue2,
              onChanged: (status){
                setState(() {
                  _cbValue2=status!;
                });
              },
              ),
            Checkbox(
              value: _cbValue3, 
              onChanged: (status){
                setState(() {
                  _cbValue3=status!;
                });
              },
              ),
            Transform.scale(scale: 3,
              child: Checkbox(
                value: _cbValue, 
                onChanged: cbMethod,
                shape: const CircleBorder(),
                activeColor: Colors.red,
                checkColor: Colors.green,
                ),
            ),
          ],
        ),
      ),
    );
  }
}