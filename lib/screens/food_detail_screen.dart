import 'package:flutter/material.dart';
import '../providers/food_provider.dart';
import 'package:provider/provider.dart';
class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({Key? key}) : super(key: key);
 
  
  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as String;
    final foodData = Provider.of<FoodProvider>(context);
    final food = foodData.findById(itemId);
    return Scaffold(
      appBar: AppBar(
        title: Text(food.title.toString()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                food.imageUrl.toString(),
                fit: BoxFit.cover,
                ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Tk ${food.price!.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w500
              ),
              ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                food.description.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
                ),
            ),
          ],
        ),
      ),
    );
  }
}