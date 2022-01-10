import 'package:flutter/material.dart';
class FoodModel extends ChangeNotifier{
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double? price;
  bool isFavorite;
  bool isCart;
  
  FoodModel({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.price,
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