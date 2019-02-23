import 'package:flutter/material.dart';
import 'package:recipes_app/recipes_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.white),
          primaryTextTheme: TextTheme(
              title: TextStyle(color: Colors.white, fontFamily: "Aveny")),
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: RecipesHome(),
    );
  }
}
