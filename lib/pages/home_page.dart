import 'package:flutter/material.dart';
import '../widgets/custom_btn.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            customBNT(),
            const SizedBox(
              height: 20.0,
            ),
            customBNT(),
            const SizedBox(
              height: 20.0,
            ),
            customBNT(),
            const SizedBox(
              height: 20.0,
            ),
            customBNT(),
          ],
        ),
      ),
      
    );
  }
}