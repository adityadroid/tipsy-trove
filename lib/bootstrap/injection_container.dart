import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';

class InjectionContainer extends StatelessWidget {
  const InjectionContainer({
    required this.drinksRepository,
    required this.child,
    super.key,
  });

  final DrinksRepository drinksRepository;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider.value(value: drinksRepository)],
      child:  child,
    );
  }
}
