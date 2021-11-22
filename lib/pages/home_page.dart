import 'package:flutter/material.dart';
import '../widgets/rect_container.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              RectContainer(Colors.green,'1st',),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.red,'2nd'),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.blue,'3rd'),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.red,'4th'),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.green,'5th'),
            ],
          ),
        ),
      ),
    );
  }
}
