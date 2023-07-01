import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';
import 'package:tipsy_trove/drink_category/widgets/drink_type_extension.dart';
import 'package:ui_kit/ui_kit.dart';

class DrinksListWidget extends StatelessWidget {
  const DrinksListWidget({required this.drinkType, super.key});

  final DrinkType drinkType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrinkCategoryBloc(
        drinksRepository: context.read<DrinksRepository>(),
      )..add(InitEvent(drinkType: drinkType)),
      child: CustomScrollView(
        key: PageStorageKey<String>(drinkType.key),
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
              context,
            ),
          ),
          const DrinksListView(),
        ],
      ),
    );
  }
}

class DrinksListView extends StatelessWidget {
  const DrinksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrinkCategoryBloc, DrinkCategoryState>(
        bloc: context.read<DrinkCategoryBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SliverFillRemaining(child: LoadingIndicator()),
            loading: () => const SliverFillRemaining(
              child: LoadingIndicator(),
            ),
            loaded: (List<Drink> drinks) => SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GridItem(
                    image: drinks[index].strDrinkThumb ?? '',
                    title: drinks[index].strDrink ?? '',
                  );
                },
                childCount: drinks.length,
              ),
            ),
            error: () => const SliverFillRemaining(
              child: AppErrorWidget(),
            ),
          );
        });
  }
}

class GridItem extends StatelessWidget {
  final String image;
  final String title;

  GridItem({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
