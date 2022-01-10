import 'package:flutter/material.dart';
import '../providers/food_model.dart';
import '../screens/food_list.dart';
import '../screens/cart_screen.dart';
import '../providers/cart_provider.dart';
import 'package:provider/provider.dart';
import '../providers/food_provider.dart';
import '../screens/food_detail_screen.dart';
import '../screens/food_overview_screen.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Food Menu';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_)=>FoodProvider()),
      ChangeNotifierProvider(create: (_)=>CartProvider()),
      ChangeNotifierProvider(create: (_)=>FoodModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.pink),
        
        routes: {
          '/food-overview':(_)=> FoodOverViewScreen(title: title),
         '/detail-page':(_)=>const FoodDetailScreen(),
         '/cart-screen':(_)=>const CartScreen(),
         '/foodlist-screen':(_)=>const FoodListScreen(),
        },
        initialRoute: '/food-overview',
      ),
    );
  }
}