import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';
import 'package:tipsy_trove/drink_category/widgets/drink_type_extension.dart';

class DrinksListWidget extends StatelessWidget {
  const DrinksListWidget({required this.drinkType, super.key});

  final DrinkType drinkType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrinkCategoryBloc(
        drinksRepository: context.read<DrinksRepository>(),
      )..add(InitEvent(drinkType: drinkType)),
      child: const DrinksListView(),
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
              initial: () => const CircularProgressIndicator(),
              loading: () => const CircularProgressIndicator(),
              loaded: (List<Drink> drinks) => ListView.builder(
                    itemCount: drinks.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(drinks[index].strDrink ?? ''),
                    ),
                  ),
              error: () => const Text('error'));
        });
  }
}
