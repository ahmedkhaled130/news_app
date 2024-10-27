import 'package:flutter/material.dart';
import 'package:news/models/catogry_model.dart';
import 'package:news/screens/Categories_Screen.dart';
import 'package:news/screens/newsTab.dart';
import 'package:news/shared/network/remote/api_manager/apiManager.dart';

import '../screens/Drawertab.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> cate = CategoryModel.getCategory();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/images/pattern.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        drawer: DrawerTab(onDrawerClic),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25)),
          backgroundColor: Colors.green,
          title: Text('News'),
        ),
        body: categoryModel == null
            ? CategoriesScreen(cate, onCategoryClic)
            : NewsTab(categoryModel!.id),
      ),
    );
  }

  CategoryModel? categoryModel = null;

  onCategoryClic(categorey) {
    categoryModel = categorey;
    setState(() {});
  }

  onDrawerClic(catId) {
    categoryModel = null;
    setState(() {});
    // if(catId==DrawerTab.CAT_ID){
    //   categoryModel==null;
    //   setState(() {
    //
    //   });
    // }else if(catId==DrawerTab.Setting_ID){
    //
    // }
  }
}
