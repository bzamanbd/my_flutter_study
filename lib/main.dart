import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/page_one.dart';
import 'pages/page_two.dart';
import 'pages/page_three.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='namedRoute DeepDrive';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.grey),
      routes: {
        '/':(cnt)=>HomePage(title: title),
        '/pageOne':(cnt)=>PageOne(title: title),
        '/pageTwo':(cnt)=>PageTwo(title: title),
        '/pageThree':(cnt)=>PageThree(title:title),
      },
      // initialRoute: '/',
    );
  }
}