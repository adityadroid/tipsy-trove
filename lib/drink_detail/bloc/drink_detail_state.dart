part of 'drink_detail_bloc.dart';

@freezed
class DrinkDetailState with _$DrinkDetailState {
  const factory DrinkDetailState.loading() = _Loading;

  const factory DrinkDetailState.loaded(DrinkDetail detail) = Loaded;

  const factory DrinkDetailState.error() = Error;
}
