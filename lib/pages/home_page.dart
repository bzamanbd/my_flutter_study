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
      body: Center(
        child: Card(
          color: Colors.green,
          elevation: 15,
          shadowColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
            ),
          child: const SizedBox(
          width: 300,
          height: 300,
          child: Center(child: Text('title',style: TextStyle(fontSize: 26.0),)),
          )
         
        ),
      )
    );
  }
}