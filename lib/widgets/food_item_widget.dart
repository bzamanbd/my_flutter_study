import 'package:flutter/material.dart';
import '../providers/cart_provider.dart';
import '../providers/food_model.dart';
import 'package:provider/provider.dart';
class FoodItemWidget extends StatelessWidget {

  const FoodItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final foodModel = Provider.of<FoodModel>(context);
    final cartData = Provider.of<CartProvider>(context,listen: false);
    // print('called rebuild method');
    return Consumer<FoodModel>(
      builder: (context,foodModel,child)=>ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        child: GridTile(
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/detail-page', arguments: foodModel.id );
            },
            child: Image.asset(
              foodModel.imageUrl.toString(),
              fit: BoxFit.fitHeight,
            ),
          ),
          header: GridTileBar(
            leading: IconButton(
              onPressed: () {
                foodModel.toggleFavoriteData();
              }, 
              icon: Icon(foodModel.isFavorite?Icons.favorite:Icons.favorite_border,
              color: Colors.amber,
              size: 25.0,
            )
            ),
            title: const Visibility(
              child: Text('dfsdffdfdfdsf'),
              visible: false,
            ),
            trailing:IconButton(
              onPressed: () {
                cartData.addItem(
                  foodModel.id.toString(), 
                  foodModel.title.toString(), 
                  foodModel.price,
                );
              }, 
              icon:const Icon(
                Icons.shopping_cart,
                color: Colors.amber,
                size: 25.0,
              )
            ),
          ),
          footer: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                topLeft: Radius.circular(50.0)
              ),
              color: Colors.black45,
            ),
            child: GridTileBar(
              // backgroundColor: Colors.black45,
              title: Text(
                foodModel.title!,
                style: const TextStyle(
                  fontSize: 16.0
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}