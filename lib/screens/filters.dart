import 'package:flutter/material.dart';
// import 'package:mealsapp/screens/tabs.dart';
// import 'package:mealsapp/widgets/main_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.read(filterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      body: Column(children: [
        SwitchListTile(
          value: activeFilters[Filter.glutenfree]!,
          onChanged: (isChecked) {
            ref.read(filterProvider.notifier).setFilter(Filter.glutenfree, isChecked);
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
          value: activeFilters[Filter.vegan]!,
          onChanged: (isChecked) {
            ref.read(filterProvider.notifier).setFilter(Filter.vegan, isChecked);
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
          value: activeFilters[Filter.vegatrain]!,
          onChanged: (isChecked) {
            ref.read(filterProvider.notifier).setFilter(Filter.vegatrain, isChecked);
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
          value: activeFilters[Filter.lactosefree]!,
          onChanged: (isChecked) {
            ref.read(filterProvider.notifier).setFilter(Filter.vegatrain, isChecked);
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
    );
  }
}
