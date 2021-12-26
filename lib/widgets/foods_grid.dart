import 'package:flutter/material.dart';
import '../providers/foods.dart';
import 'package:provider/provider.dart';
import './food_item.dart';
class FoodsGrid extends StatelessWidget {
   const FoodsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData=Provider.of<Foods>(context);
    final products=productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3/2,
        ), 
      itemBuilder: (cnt,i)=> FoodItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
        )
      );
  }
}