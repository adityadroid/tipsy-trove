import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tipsy_trove/utils/drink_title_extension.dart';

part 'drink_category_bloc.freezed.dart';
part 'drink_category_event.dart';
part 'drink_category_state.dart';

class DrinkCategoryBloc extends Bloc<DrinkCategoryEvent, DrinkCategoryState> {
  DrinkCategoryBloc({required DrinksRepository drinksRepository})
      : _drinksRepository = drinksRepository,
        super(const DrinkCategoryState.loading()) {
    on<DrinkCategoryEvent>((event, emit) async {
      await event.map(init: (event) async => _init(event, emit));
    });
  }

  Future<void> _init(InitEvent event, Emitter<DrinkCategoryState> emit) async {
    try {
      emit(const DrinkCategoryState.loading());
      final drinks = await _drinksRepository.getDrinksByType(event.drinkType);
      drinks.shuffle(Random());
      final state = DrinkCategoryState.loaded(drinks);
      emit(state);
    } on (Exception e,) {
      emit(const DrinkCategoryState.error());
    }
  }

  final DrinksRepository _drinksRepository;
}
