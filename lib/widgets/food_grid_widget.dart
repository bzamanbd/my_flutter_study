import 'package:flutter/material.dart';
import '../providers/food_provider.dart';
import 'package:provider/provider.dart';
import 'food_item_widget.dart';
class FoodGridWidget extends StatelessWidget {
  const FoodGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodData = Provider.of<FoodProvider>(context);
    final product = foodData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ), 
      itemBuilder: (context, i) => FoodItemWidget(
        product[i].id,
        product[i].title,
        product[i].imageUrl,
        
      ),
      itemCount: product.length,
    );
  }
}