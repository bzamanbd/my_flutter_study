import 'package:flutter/material.dart';

import 'pages/home_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom TabBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      // routes: ,
      // initialRoute: ,
      home: const HomePage(),
    );
  }
}