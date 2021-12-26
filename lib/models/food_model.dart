import 'package:flutter/material.dart';
class Food{
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double? price;
  bool? isFavorite;

  Food({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.price,
    this.isFavorite=false,
  });
}