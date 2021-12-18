import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Method Widget';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      // routes: ,
      // initialRoute: ,
      home: const WelcomePage(),
    );
  }
}