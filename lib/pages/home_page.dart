import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width/2,
              height: height/4,
              color: Colors.grey[300],
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.volume_up_rounded,
                color: Colors.deepOrange,
                size: 40,
                ),
                )
            ),
          ],
        ),
      ),
    );
  }
}