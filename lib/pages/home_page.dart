import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: size.height/8,
        // leading: Image.asset('assets/images/Logo.png'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo.png',
            // height: size.height / 8,
            ),
            SizedBox(width: size.width/30,),
            const Text('My Cat',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
            )
          ],
        ),
        actions: [
          
          // IconButton(
          //   onPressed: (){}, 
          //   icon: const Icon(Icons.search,color: Colors.amber,),
          //   ),
          
          TextButton.icon(
            onPressed: (){}, 
            icon: const Icon(Icons.search,color: Colors.white,), 
            label: const Text('Search',style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}