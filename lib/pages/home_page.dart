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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              RectContainer(Colors.green),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.red),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.blue),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.red),
              SizedBox(
                height: 20,
              ),
              RectContainer(Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
