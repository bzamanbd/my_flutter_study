import 'package:flutter/material.dart';
import '../widgets/custom_btn.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
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
          children:   <Widget>[
            Text('Current Value is = $count',
            style: const TextStyle(
              fontSize: 18.0,
            ),
            ),
            const SizedBox(
              height: 22.0,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  count++;
                });
              },
              child: const CustomBTN('Counter'),
            ),
          ],
        ),
      ),
      
    );
  }
}