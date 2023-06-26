import 'package:flutter/material.dart';
// import 'package:mealsapp/screens/tabs.dart';
// import 'package:mealsapp/widgets/main_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/providers/filters_provider.dart';

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  var _glutenFreeFilterset = false;
  var _veganFilterSet = false;
  var _vegaterianFilterSet = false;
  var _lactoseFreeFilterSet = false;

  @override
  void initState() {
    super.initState();
    final activeFilters = ref.read(filterProvider);
    _glutenFreeFilterset = activeFilters[Filter.glutenfree]!;
    _lactoseFreeFilterSet = activeFilters[Filter.lactosefree]!;
    _veganFilterSet = activeFilters[Filter.vegan]!;
    _vegaterianFilterSet = activeFilters[Filter.vegatrain]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      // drawer: MainDrawer(onSelectedScreen: (indentifier) {
      //   if (indentifier == "meals") {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (ctx) => TabsScreen()));
      //   }
      // }),
      body: WillPopScope(
        onWillPop: () async {
          ref.read(filterProvider.notifier).setFilters({
            Filter.glutenfree: _glutenFreeFilterset,
            Filter.lactosefree: _lactoseFreeFilterSet,
            Filter.vegatrain: _vegaterianFilterSet,
            Filter.vegan: _veganFilterSet,
          });
          // Navigator.of(context).pop();
          return true;
        },
        child: Column(children: [
          SwitchListTile(
            value: _glutenFreeFilterset,
            onChanged: (isChecked) {
              setState(() {
                _glutenFreeFilterset = isChecked;
              });
            },
            title: Text(
              "Gluten-Free",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only contain meals that are gluten free...',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _veganFilterSet = isChecked;
              });
            },
            title: Text(
              "Vegan",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only contain meals that are vegan...',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _vegaterianFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _vegaterianFilterSet = isChecked;
              });
            },
            title: Text(
              "Vegaterian",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only contain meals that are vegaterian...',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isChecked) {
              setState(() {
                _lactoseFreeFilterSet = isChecked;
              });
            },
            title: Text(
              "Lactose-Free",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only contain meals that are lactose free...',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          )
        ]),
      ),
    );
  }
}
