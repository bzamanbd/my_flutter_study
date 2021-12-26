import 'package:flutter/material.dart';
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
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body:const FoodGridWidget(),
    );
  }
}