import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _cbValue1 = false;
  bool _cbValue2 = false;
  bool _cbValue3 = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox'),
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple,width: 2.0),
              ),
              child: Checkbox(value: _cbValue1, onChanged: (status){setState(() {
                _cbValue1 =status!;
              });},
              shape: const CircleBorder(),
              ),
            ),
            Checkbox(value: _cbValue2, onChanged: (status){setState(() {
              _cbValue2=status!;
            });},
            ),
            Checkbox(value: _cbValue3, onChanged: (status){setState(() {
              _cbValue3=status!;
            });}),
            Checkbox(value: _cbValue1, onChanged: (status){setState(() {
              _cbValue1=status!;
            });},
            shape: const CircleBorder(),
            ),
            
          ],
        ),
      )
    );
  }
}