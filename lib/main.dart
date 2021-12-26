import 'package:flutter/material.dart';
import 'package:my_flutter_study/providers/foods.dart';
import 'package:provider/provider.dart';
import 'screens/food_detail.dart';
import 'screens/food_overview.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Food Order';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Foods>(
      create: (_)=>Foods(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.pink),
      routes: {
        '/':(_)=>FoodOverView(title:title),
        '/foodDetail':(context)=>const FoodDetailScreen(),
      },
    ),
    );
    
    
  }
}
