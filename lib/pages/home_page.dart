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
        child: Text.rich(
          TextSpan(
            text: 'this is default font style.',
            children: [
              TextSpan(
                text: 'another font style',
                style: TextStyle(fontSize: 40, fontFamily: 'Estonia',color: Colors.green)
              ),
              TextSpan(
                text: 'Other Style',
                style: TextStyle(
                  fontFamily: 'Estonia',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                )
              ),
            ]
          ),

          ),
      )
    );
  }
}