part of 'drink_detail_bloc.dart';

@freezed
class DrinkDetailEvent with _$DrinkDetailEvent {
  const factory DrinkDetailEvent.random() = RandomDrinkEvent;

  const factory DrinkDetailEvent.fromId({
    required String drinkId,
  }) = FromIdDrinkEvent;
}
