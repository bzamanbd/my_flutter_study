import 'package:flutter/material.dart';
import '../providers/cart_provider.dart';
import 'package:provider/provider.dart';
import '../widgets/badge_widget.dart';
import '../widgets/food_grid_widget.dart';

class FoodOverViewScreen extends StatelessWidget {
  final String title;
  const FoodOverViewScreen({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          
          Consumer<CartProvider>(
            builder: (context, value, child) => BadgeWidget(
              child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {},
            ), 
              color: Colors.black54, 
              value: value.itemCount.toString()
            ),
          )
        ],
      ),
      body:const FoodGridWidget(),
    );
  }
}