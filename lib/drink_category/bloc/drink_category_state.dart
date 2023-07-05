part of 'drink_category_bloc.dart';

@freezed
class DrinkCategoryState with _$DrinkCategoryState {
  const factory DrinkCategoryState.loading() = Loading;
  const factory DrinkCategoryState.loaded(List<Drink> drinks) = Loaded;
  const factory DrinkCategoryState.error() = Error;
}
