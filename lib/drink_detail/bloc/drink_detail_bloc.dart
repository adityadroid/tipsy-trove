import 'package:bloc/bloc.dart';
import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink_detail_bloc.freezed.dart';
part 'drink_detail_event.dart';
part 'drink_detail_state.dart';

class DrinkDetailBloc extends Bloc<DrinkDetailEvent, DrinkDetailState> {
  DrinkDetailBloc({required DrinksRepository drinksRepository})
      : _drinksRepository = drinksRepository,
        super(const DrinkDetailState.loading()) {
    on<DrinkDetailEvent>((event, emitter) async {
      await event.map(
        random: (event) async => fetchRandomDrink(event, emitter),
        fromId: (event) async => fetchDrinkById(event, emitter),
      );
    });
  }

  Future<void> fetchRandomDrink(
    RandomDrinkEvent event,
    Emitter<DrinkDetailState> emitter,
  ) async {
    try {
      final drink = await _drinksRepository.getRandomDrink();
      if (drink == null) {
        emitter(const DrinkDetailState.error());
      } else {
        emitter(DrinkDetailState.loaded(drink));
      }
    } on (Exception e,) {
      emitter(const DrinkDetailState.error());
    }
  }

  Future<void> fetchDrinkById(
    FromIdDrinkEvent event,
    Emitter<DrinkDetailState> emitter,
  ) async {
    // TODO(adityadroid): Implement drink by ID
  }

  final DrinksRepository _drinksRepository;
}
