import 'package:flutter/material.dart';

import 'pages/home_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Slider Widget';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      // routes: ,
      // initialRoute: ,
      home: HomePage(title:title),
    );
  }
}