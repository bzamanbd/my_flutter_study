import 'package:flutter/material.dart';
import '../widgets/custom_container.dart';
class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: const <Widget>[
            Positioned(
              // top: 30,
              
              child: CustomContainer(
                  Colors.green,
                  'green',
                  300.0,
                  400.0,
                ),
            ),
            Positioned(
              bottom: -30,
              left: -30,
              child: CustomContainer(
                  Colors.red,
                  'red',
                  200.0,
                  180.0,
                ),
            ),
            Positioned(
              right: -30,
              child: CustomContainer(
                  Colors.yellow,
                  'yellow',
                  100.0,
                  200.0,
                ),
            ),
          ],
        ),
      )
    );
  }
}