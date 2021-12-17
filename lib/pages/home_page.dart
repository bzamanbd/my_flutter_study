import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _swValue=false;
  void swmethod(value){
  setState(() {
    _swValue=value;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: const TextStyle(
          fontSize: 22.0
        ),
        ),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red,width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Switch(
              value: _swValue,
              onChanged: swmethod,
              activeColor: Colors.blue,
              activeTrackColor: Colors.pink,
              inactiveTrackColor: Colors.indigo[300],
              inactiveThumbColor: Colors.yellow,
              ),
          ),
        ),
      ),
    );
  }
}