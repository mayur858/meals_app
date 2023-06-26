
import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';

class FavouriteMealNotifier extends StateNotifier<List<Meal>>{
FavouriteMealNotifier (): super ([]);


bool toggleMealsFavouriteStatus(Meal meal){
  final mealIsFavourite = state.contains(meal);

  if(mealIsFavourite)
  {
    state = state.where((m) => m.id!=meal.id).toList();
      return false;
  }
  else{
    state= [...state, meal];
    return true;
  }
}
}

final FavouriteMealsProvider = StateNotifierProvider<FavouriteMealNotifier,List<Meal>>((ref){
  return FavouriteMealNotifier();
});