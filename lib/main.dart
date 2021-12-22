import 'package:flutter/material.dart';
import 'package:my_flutter_study/pages/home_page.dart';

import 'pages/login_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Navigator Replacement';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.grey),
      routes: {
        '/':(cnt)=> const LoginPage(),
        '/home':(cnt)=>HomePage(title: title),
      },
    );
  }
}