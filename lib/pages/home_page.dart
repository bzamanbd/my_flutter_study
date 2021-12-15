import 'package:flutter/material.dart';
import '/widgets/first_tab.dart';
import '/widgets/second_tab.dart';
import '/widgets/third_tab.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom TabBar'),
          centerTitle: true,
        ),
        // drawer: ,
        // bottomSheet: ,
        // floatingActionButton: ,
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.person),
              text: "Person",
            ),
            Tab(
              icon: Icon(Icons.camera),
              text: "Camera",
            ),
            Tab(
              icon: Icon(Icons.menu_book),
              text: "Menu",
            ),
          ],
          ),
          body: const TabBarView(
            children: [
            FirstTab(),
            SecondTab(),
            ThirdTab()
          ]
          )
      ),
    );
  }
}