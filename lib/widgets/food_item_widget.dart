import 'package:flutter/material.dart';
class FoodItemWidget extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  const FoodItemWidget(this.id, this.title,this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/detail-page', arguments: id );
          },
          child: Image.asset(
            imageUrl!,
            fit: BoxFit.fitHeight,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: const Icon(Icons.favorite),
          title: Text(title!,textAlign: TextAlign.center,),
          trailing: const Icon(Icons.shopping_cart),
        ),
      ),
      
    );
  }
}