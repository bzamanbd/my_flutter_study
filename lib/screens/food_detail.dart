import 'package:flutter/material.dart';
import '../providers/foods.dart';
import 'package:provider/provider.dart';
class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as String;
    final foodData=Provider.of<Foods>(context);
    final food = foodData.findById(itemId);
    return Scaffold(
      appBar: AppBar(
        title: Text(food.title.toString()),
        centerTitle: true,
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
            const SizedBox(height: 10,),
            Text(
              'TK ${food.price?.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                // borderRadius: const BorderRadius.all(Radius.circular(20.0))
              ),
              width: double.infinity,
              child: Text(
                food.description.toString(),
                style: const TextStyle(
                  fontSize: 18.0,
                  height: 1.3,
                  color: Colors.black87
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}