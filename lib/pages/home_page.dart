import 'package:flutter/material.dart';
import '../widgets/custom_container.dart';
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final items = List.generate(40, (counter) => '$counter');
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
      body:GridView.builder(
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: items.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context,index){
          return   Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomContainer(Colors.blue,items[index]),
          );
        }
        )
    );
  }
}