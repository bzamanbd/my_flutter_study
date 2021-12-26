import 'package:flutter/material.dart';
import '../widgets/foods_grid.dart';
class FoodOverView extends StatelessWidget {
  final String title;
  const FoodOverView({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
          )
        ],
      ),
      body: const FoodsGrid(),
      // drawer: ,
      // bottomNavigationBar: ,
      // bottomSheet: ,
      // floatingActionButton: ,
    );
  }
}