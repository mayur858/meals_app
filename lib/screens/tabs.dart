import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/screens/categories.dart';
import 'package:mealsapp/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  var _selectedPageIndex = 0;
  final List<Meal> _favouriteMeals = [];

  void _toggleMealsFavouriteStatus(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal);
    if (isExisting) {
      _favouriteMeals.remove(meal);
    } else {
      _favouriteMeals.add(meal);
    }
  }

  var activePageTitle = 'Categories';

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      onToggleFavourite: _toggleMealsFavouriteStatus,
    );

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: [],
        onToggleFavourite: _toggleMealsFavouriteStatus,
      );
      activePageTitle = 'Your Favourite';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favourite"),
        ],
      ),
    );
  }
}
