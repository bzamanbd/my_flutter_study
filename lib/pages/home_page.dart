import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _groupValue=0;
  void rmethod(value){
    setState(() {
      _groupValue=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: const TextStyle(
          fontSize: 20
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
                Radio(
                  value: 1, 
                  groupValue: _groupValue, 
                  onChanged: rmethod,
                  ),
                Radio(
                  value: 2, 
                  groupValue: _groupValue, 
                  onChanged: rmethod,
                  ),
                Radio(
                  value: 3, 
                  groupValue: _groupValue, 
                  onChanged: rmethod,
                  ),
                Radio(
                  value: 4, 
                  groupValue: _groupValue, 
                  onChanged: rmethod,
                  ),
                Transform.scale(scale: 2,
                  child: Radio(
                    value: 5, 
                    groupValue: _groupValue, 
                    onChanged: rmethod,
                    activeColor: Colors.orange,
                    ),
                ),
              ],
            ),
      ),
    );
  }
}