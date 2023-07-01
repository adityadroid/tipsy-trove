import 'package:freezed_annotation/freezed_annotation.dart';
part 'drink.freezed.dart';
part 'drink.g.dart';

/// {@template drink}
///  A single drink item
///
/// Contains a [strDrink] ,[strDrinkThumb] and [idDrink]
/// {@endtemplate}
@freezed
class Drink with _$Drink {
    /// {@macro drink}
    const factory Drink({
        String? strDrink,
        String? strDrinkThumb,
        String? idDrink,
    }) = _Drink;

    /// Generates a [Drink] from JSON
    /// {@macro drink}
    factory Drink.fromJson(Map<String, Object?> json) => _$DrinkFromJson(json);
}
