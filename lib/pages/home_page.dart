import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView with Count'
        ),
        centerTitle:true,
      ),
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: Text('This is a Custom Text',
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w500,
          fontFamily: 'Estonia',
        ),
        )
      )
    );
  }
}