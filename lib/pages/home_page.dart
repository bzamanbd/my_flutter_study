import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
              children:  [
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://oceanbeachsandiego.com/sites/default/files/d7/photos/newport-avenue-ocean-beach-flower-02.jpg'),
                  radius: 150,
                ),
                const SizedBox(height: 10,),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://cdn.shopify.com/s/files/1/0549/8421/2633/files/750x1100_copy_720x.jpg?v=1615795396')),
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