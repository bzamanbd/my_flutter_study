import 'package:flutter/material.dart';
import '../widgets/custom_container.dart';
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
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 4,
        children: const <Widget>[
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        CustomContainer(Colors.green,'title'),
        ],
        ),
    );
  }
}