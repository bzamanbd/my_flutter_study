import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style: const TextStyle(
          fontFamily: 'Corinthia',
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body: const Center(
        child: Text('This is a Custom Font',
        style: TextStyle(
          fontSize: 46.0,
          fontFamily: 'Corinthia',
        ),
        ),
      ),
    );
  }
}