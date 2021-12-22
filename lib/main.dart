import 'package:flutter/material.dart';
import 'pages/home_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String title='Passing Data';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.purple),
      // routes: ,
      // initialRoute: ,
      home: HomePage(title:title),
    );
  }
}