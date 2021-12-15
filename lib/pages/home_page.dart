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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height/3.5),
        child: AppBar(
          // leading: const Icon(Icons.person),
          title: const Text('AppBar',
          style: TextStyle(
            fontSize: 30.0,
            // fontFamily: ,
            // fontStyle: FontStyle.italic,
          ),
          ),
          centerTitle: true,
          // backgroundColor: Colors.blue,
          elevation: 8.0,
          shadowColor: Colors.grey,
          toolbarOpacity: .6,
          // toolbarHeight: 150.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
              )
          ),
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            ),
            child: Container(
              decoration:  BoxDecoration(
                image: DecorationImage(image: const AssetImage('assets/images/Barn Owl.jpg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.5),BlendMode.colorBurn
                  ),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}