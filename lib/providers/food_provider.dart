import 'package:flutter/material.dart';
import '../models/food.dart';
class FoodProvider extends ChangeNotifier{
  final List<Food> _items=[
    Food(
      id: 'f1', 
      title: 'BURGER', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 150, 
      imageUrl: 'assets/images/burger.jpg',
    ),
    
    Food(
      id: 'f2', 
      title: 'CHICKEN FRY', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 300, 
      imageUrl: 'assets/images/chicken.webp',
    ),

    Food(
      id: 'f3', 
      title: 'KFC', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 350.50, 
      imageUrl: 'assets/images/kfc.webp',
    ),

    Food(
      id: 'f4', 
      title: 'PIZZA', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 
      price: 500, 
      imageUrl: 'assets/images/pizza.jpg',
    ),
  ];

  List<Food> get items{
    return [..._items];
  }

  Food findById(String id){
    return _items.firstWhere((prod) => prod.id==id);
  }
}