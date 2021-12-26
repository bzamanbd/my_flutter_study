import 'package:flutter/material.dart';
import '../models/food.dart';
class Foods extends ChangeNotifier{
  final List <Food>_items=[
    Food(
      id: 'p1', 
      title: 'Burger', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is',
      price: 150,
      imageUrl: 'assets/images/burger.jpg'
    ),
    
    Food(
      id: 'p2', 
      title: 'KFC', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is', 
      price: 200, 
      imageUrl: 'assets/images/kfc.webp'
    ),
    
    Food(
      id: 'p3', 
      title: 'Chicken Fry', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is', 
      price: 220, 
      imageUrl: 'assets/images/chicken.webp'
    ),
    
    Food(
      id: 'p4', 
      title: 'Pizza', 
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is', 
      price: 300, 
      imageUrl: 'assets/images/pizza.jpg'
    ),
    
  ];
  
  List<Food> get items{
    return [..._items];
  }

  Food findById(String id){
    return _items.firstWhere((prod) => prod.id==id);
  }
  
  void addFood(Food value){
    _items.add(value);
    // notifyListeners();
  }
}