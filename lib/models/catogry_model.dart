import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String id;
  String image;
  Color color;

  CategoryModel(this.name, this.id, this.image, this.color);

  static List<CategoryModel> getCategory() {
    return [
      CategoryModel(
          "Sports", "sports", "assets/images/sports.png", Color(0xffC91C22)),
      CategoryModel("Politics", "general", "assets/images/Politics.png",
          Color(0xff003E90)),
      CategoryModel(
          "Health", "health", "assets/images/health.png", Color(0xffED1E79)),
      CategoryModel("Business", "business", "assets/images/bussines.png",
          Color(0xffCF7E48)),
      CategoryModel("Entertainment", "entertainment",
          "assets/images/environment.png", Color(0xff4882CF)),
      CategoryModel(
          "Science", "science", "assets/images/science.png", Color(0xffF2D352)),
    ];
  }
}
