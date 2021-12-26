import 'package:flutter/material.dart';
class FoodItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  const FoodItem(
    this.id,
    this.title,
    this.imageUrl, {Key? key}
  ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(
              '/foodDetail', arguments: id
            );
          },
          child: Image.asset(
            imageUrl!,
            fit: BoxFit.fitHeight,
            ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.favorite)
            ),
          title: Text(
            title!,
            textAlign: TextAlign.center,
            ),  
          trailing: IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.shopping_cart)
            ),
        ),
        ),
    );
  }
}