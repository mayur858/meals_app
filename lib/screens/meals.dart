import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

class mealsScreen extends StatelessWidget {
  mealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => Text(
          meals[index].title,
        ),
      ),
    );
  }
}
