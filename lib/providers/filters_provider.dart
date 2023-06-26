import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/screens/filters.dart';

enum Filter {
  glutenfree,
  lactosefree,
  vegatrain,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenfree: false,
          Filter.lactosefree: false,
          Filter.vegan: false,
          Filter.vegatrain: false,
        });
  void setFilters(Map<Filter, bool> chosenFiles) {
    state = chosenFiles;
  }

  void setFilter(Filter filter, bool isActive) {
    // state[filter]=isActive ; //not allowed => mutating state

    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filterProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref) => FiltersNotifier());
