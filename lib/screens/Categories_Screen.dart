import 'package:flutter/material.dart';
import 'package:news/screens/categoryItem.dart';

import '../models/catogry_model.dart';

class CategoriesScreen extends StatelessWidget {
  List<CategoryModel> categories;
  Function onClic;

  CategoriesScreen(this.categories, this.onClic);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pick your category \n'
              'of interest',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: categories
                    .map((category) => InkWell(
                        onTap: () {
                          onClic(category);
                        },
                        child: CategoryItem(category)))
                    .toList(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
