import 'package:flutter/material.dart';
// import 'package:mealsapp/screens/tabs.dart';
// import 'package:mealsapp/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  State<StatefulWidget> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterset = false;
  var _veganFilterSet = false;
  var _vegaterianFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      // drawer: MainDrawer(onSelectedScreen: (indentifier) {
      //   if (indentifier == "meals") {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (ctx) => TabsScreen()));
      //   }
      // }),
      body: Column(children: [
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
      ]),
    );
  }
}
