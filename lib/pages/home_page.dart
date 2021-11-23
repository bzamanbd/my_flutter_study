import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image.asset'
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
              children:  [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Asian Openbill.jpg'),
                  radius: 150,
                ),
                const SizedBox(height: 10,),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/Barn Owl.jpg')),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      
      )
    );
  }
}