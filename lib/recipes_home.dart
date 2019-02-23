import 'package:flutter/material.dart';
import 'package:recipes_app/recipes_list.dart';
import 'recipes_list.dart';

class RecipesHome extends StatelessWidget {

final topBar = AppBar(
  backgroundColor: Colors.pink,
  elevation: 1.0,
  centerTitle: true,
  leading: Icon(Icons.menu),
  title: Text("Our Recipes"),
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: RecipesList(),
    );
  }
}