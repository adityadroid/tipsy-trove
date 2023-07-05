import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';
import 'package:tipsy_trove/drink_category/view/drink_item.dart';
import 'package:tipsy_trove/utils/drink_title_extension.dart';
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
                  return DrinkItem(
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
      },
    );
  }
}
