import 'package:flutter/material.dart';
import 'pages/home_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Drawer Widget';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      // routes: ,
      // initialRoute: ,
      home: HomePage(title:title),
    );
  }
}