import 'package:flutter/material.dart';
import 'pages/home_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Provider';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes:{
        '/':(_)=>HomePage(title:title),
      },
      // initialRoute: ,
      // home: ,
    );
  }
}