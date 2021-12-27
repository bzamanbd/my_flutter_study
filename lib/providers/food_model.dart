import 'package:flutter/material.dart';
class FoodModel extends ChangeNotifier{
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double? price;
  bool isFavorite;

  FoodModel({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.price,
    this.isFavorite=false,
  });

  toggleFavoriteData(){
    isFavorite=!isFavorite;
    notifyListeners();
  }
}