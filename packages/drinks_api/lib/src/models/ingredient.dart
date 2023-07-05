import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';

/// {@ingredient single data holder for [Ingredient]
/// contains both the name and its measure}
@freezed
class Ingredient with _$Ingredient {
  ///{@macro ingredient}
  const factory Ingredient({String? name, String? measure}) = _Ingredient;
}
