import 'package:flutter/material.dart';
class FoodModel extends ChangeNotifier{
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double price;
  bool isFavorite;
  bool isCart;
  
  FoodModel({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    required this.price,
    this.isFavorite=false,
    this.isCart=false,
  });

  toggleFavoriteData(){
    isFavorite=!isFavorite;
    notifyListeners();
  }
  toggleCartData(){
    isCart=!isCart;
    notifyListeners();
  }
}