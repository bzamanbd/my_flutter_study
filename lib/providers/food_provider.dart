import 'package:flutter/material.dart';
import 'food_model.dart';
class FoodProvider extends ChangeNotifier{
  final List<FoodModel> _items=[
    FoodModel(
      id: 'f1', 
      title: 'BURGER', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 150, 
      imageUrl: 'assets/images/burger.jpg',
    ),
    
    FoodModel(
      id: 'f2', 
      title: 'CHICKEN FRY', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 300, 
      imageUrl: 'assets/images/chicken.webp',
    ),

    FoodModel(
      id: 'f3', 
      title: 'KFC', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 350.50, 
      imageUrl: 'assets/images/kfc.webp',
    ),

    FoodModel(
      id: 'f4', 
      title: 'PIZZA', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 500, 
      imageUrl: 'assets/images/pizza.jpg',
    ),
    FoodModel(
      id: 'f5', 
      title: 'SANDWICH', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 500, 
      imageUrl: 'assets/images/sandwich.jpg',
    ),
    FoodModel(
      id: 'f6',
      title: 'ONION SAMOSA',
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: 100,
      imageUrl: 'assets/images/onionsamosa.jpg',
    ),
  ];

  List<FoodModel> get items{
    return [..._items];
  }

  FoodModel findById(String id){
    return _items.firstWhere((prod) => prod.id==id);
  }
}