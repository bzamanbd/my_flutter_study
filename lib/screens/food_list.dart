import 'package:flutter/material.dart';
import '../widgets/user_food_items.dart';
import '../providers/food_provider.dart';
import 'package:provider/provider.dart';
// import '../widgets/app_drawer_widget.dart';
class FoodListScreen extends StatelessWidget {
  const FoodListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodsData = Provider.of<FoodProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Foods'),
        centerTitle: true,
        actions: const [
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      // drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: foodsData.items.length,
          itemBuilder: (cntx, i)=>Column(
            children: [
              UserFoodItems(
                foodsData.items[i],
              ),
              const Divider(),
            ],
          )
        ),
      ),
    );
  }
}
