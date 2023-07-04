part of 'drink_category_bloc.dart';

@freezed
class DrinkCategoryEvent with _$DrinkCategoryEvent {
  const factory DrinkCategoryEvent.init({
    required DrinkType drinkType,
  }) = InitEvent;
}
