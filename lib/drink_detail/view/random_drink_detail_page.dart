import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tipsy_trove/drink_detail/bloc/drink_detail_bloc.dart';
import 'package:tipsy_trove/drink_detail/view/drink_detail_widget.dart';
import 'package:tipsy_trove/drink_detail/view/loading_drink_widget.dart';
import 'package:ui_kit/ui_kit.dart';

class RandomDrinkDetailPage extends StatelessWidget {
  const RandomDrinkDetailPage({super.key});

  static const routeName = '/random-drink-detail';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrinkDetailBloc(
        drinksRepository: context.read<DrinksRepository>(),
      )..add(const RandomDrinkEvent()),
      child: const RandomDrinkDetailView(),
    );
  }
}

class RandomDrinkDetailView extends StatelessWidget {
  const RandomDrinkDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DrinkDetailBloc, DrinkDetailState>(
        bloc: context.read<DrinkDetailBloc>(),
        builder: (context, state) {
          return state.when(
              loading: () => const LoadingDrinkWidget(),
              loaded: (detail) => DrinkDetailWidget(detail: detail),
              error: () => const AppErrorWidget());
        },
      ),
    );
  }
}
