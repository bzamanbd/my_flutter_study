import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _sValue=1.0;
  void smethod(value){
    setState(() {
      _sValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: const TextStyle(
          fontSize: 26.0,
        ),
        ),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red,width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  value: _sValue,
                  min: 0,
                  max: 10,
                  onChanged: smethod,
                  ),
                Text('Range : $_sValue',
                style:const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold
                  ) ,
                ),
              ],
            ),
          ),
        ),
        ),
    );
  }
}