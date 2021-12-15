import 'package:flutter/material.dart';
import '/widgets/first_tab.dart';
import '/widgets/second_tab.dart';
import '/widgets/third_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          toolbarHeight: size.height / 8,
          // leading: Image.asset('assets/images/Logo.png'),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Logo.png',
                // height: size.height / 8,
              ),
              SizedBox(
                width: size.width / 30,
              ),
              const Text(
                'My Cat',
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
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: const Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
          bottom: const TabBar(
            tabs:[
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                icon: Icon(Icons.menu),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FirstTab(),
            SecondTab(),
            ThirdTab(),
          ]
          ),
      ),
    );
  }
}
