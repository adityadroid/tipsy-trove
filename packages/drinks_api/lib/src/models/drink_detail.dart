import 'package:drinks_api/src/models/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink_detail.freezed.dart';

part 'drink_detail.g.dart';

/// {@template drink_detail}
///  A single drink detail
///
/// Contains a [strDrink] ,[strDrinkThumb] and [idDrink]
/// {@endtemplate}
@freezed
class DrinkDetail with _$DrinkDetail {
  ///{@macro drink_detail}
  const factory DrinkDetail({
    @JsonKey(name: 'idDrink') String? id,
    @JsonKey(name: 'strDrink') String? drinkName,
    @JsonKey(name: 'strTags') String? tags,
    @JsonKey(name: 'strIBA') String? iba,
    @JsonKey(name: 'strAlcoholic') String? alcoholType,
    @JsonKey(name: 'strGlass') String? glass,
    @JsonKey(name: 'strInstructions') String? instructions,
    @JsonKey(name: 'strDrinkThumb') String? thumbnailUrl,
    @JsonKey(name: 'ingredient1') String? ingredient1,
    @JsonKey(name: 'measure1') String? measure1,
    @JsonKey(name: 'ingredient2') String? ingredient2,
    @JsonKey(name: 'measure2') String? measure2,
    @JsonKey(name: 'ingredient3') String? ingredient3,
    @JsonKey(name: 'measure3') String? measure3,
    @JsonKey(name: 'ingredient4') String? ingredient4,
    @JsonKey(name: 'measure4') String? measure4,
    @JsonKey(name: 'ingredient5') String? ingredient5,
    @JsonKey(name: 'measure5') String? measure5,
    @JsonKey(name: 'ingredient6') String? ingredient6,
    @JsonKey(name: 'measure6') String? measure6,
    @JsonKey(name: 'ingredient7') String? ingredient7,
    @JsonKey(name: 'measure7') String? measure7,
    @JsonKey(name: 'ingredient8') String? ingredient8,
    @JsonKey(name: 'measure8') String? measure8,
    @JsonKey(name: 'ingredient9') String? ingredient9,
    @JsonKey(name: 'measure9') String? measure9,
    @JsonKey(name: 'ingredient10') String? ingredient10,
    @JsonKey(name: 'measure10') String? measure10,
    @JsonKey(name: 'ingredient11') String? ingredient11,
    @JsonKey(name: 'measure11') String? measure11,
    @JsonKey(name: 'ingredient12') String? ingredient12,
    @JsonKey(name: 'measure12') String? measure12,
    @JsonKey(name: 'ingredient13') String? ingredient13,
    @JsonKey(name: 'measure13') String? measure13,
    @JsonKey(name: 'ingredient14') String? ingredient14,
    @JsonKey(name: 'measure14') String? measure14,
    @JsonKey(name: 'ingredient15') String? ingredient15,
    @JsonKey(name: 'measure15') String? measure15,
  }) = _DrinkDetail;

  ///{@macro drink_detail}
  const DrinkDetail._();

  /// Generates a [DrinkDetail] from JSON
  /// {@macro drink}
  factory DrinkDetail.fromJson(Map<String, Object?> json) =>
      _$DrinkDetailFromJson(json);

  /// Returns a list of ingredients
  List<Ingredient> get ingredients => [
        Ingredient(
          name: ingredient1,
          measure: measure1,
        ),
        Ingredient(
          name: ingredient2,
          measure: measure1,
        ),
        Ingredient(
          name: ingredient3,
          measure: measure2,
        ),
        Ingredient(
          name: ingredient4,
          measure: measure3,
        ),
        Ingredient(
          name: ingredient5,
          measure: measure4,
        ),
        Ingredient(
          name: ingredient6,
          measure: measure5,
        ),
        Ingredient(
          name: ingredient7,
          measure: measure6,
        ),
        Ingredient(
          name: ingredient8,
          measure: measure7,
        ),
        Ingredient(
          name: ingredient9,
          measure: measure8,
        ),
        Ingredient(
          name: ingredient10,
          measure: measure9,
        ),
        Ingredient(
          name: ingredient11,
          measure: measure10,
        ),
        Ingredient(
          name: ingredient12,
          measure: measure11,
        ),
        Ingredient(
          name: ingredient13,
          measure: measure12,
        ),
        Ingredient(
          name: ingredient14,
          measure: measure13,
        ),
        Ingredient(
          name: ingredient15,
          measure: measure14,
        ),
      ];
}
