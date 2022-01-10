import 'package:flutter/material.dart';
import '../providers/food_model.dart';
import 'package:provider/provider.dart';
class UserFoodItems extends StatefulWidget {
  
  const UserFoodItems(FoodModel item, {Key? key}) : super(key: key);

  @override
  _UserFoodItemsState createState() => _UserFoodItemsState();
}

class _UserFoodItemsState extends State<UserFoodItems> {
  
  @override
  Widget build(BuildContext context) {
    final foodmodel = Provider.of<FoodModel>(context,listen: false);
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(foodmodel.imageUrl.toString()),
      ),
      title: Text(foodmodel.title.toString()),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              )
          ],
        ),
      ),
    );
  }
}