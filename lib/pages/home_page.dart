import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Network Image'
        ),
        centerTitle:true,
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://oceanbeachsandiego.com/sites/default/files/d7/photos/newport-avenue-ocean-beach-flower-02.jpg'),
                  radius: 150,
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      
      )
    );
  }
}