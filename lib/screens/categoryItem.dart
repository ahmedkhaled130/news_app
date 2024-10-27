import 'package:flutter/material.dart';
import 'package:news/models/catogry_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;

  CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: categoryModel.color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(categoryModel.image, height: 100),
            Text(categoryModel.name, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
