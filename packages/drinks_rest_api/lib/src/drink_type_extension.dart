import 'package:types/types.dart';
export 'package:types/types.dart';

///{@template rest_path_extension}
///Returns the name of the filter to be used in the rest path as a parameter
///{@endtemplate}
extension RestPathExtension on DrinkType {

  /// {@macro rest_path_extension}
  String get restFilterName {
    switch (this) {
      case DrinkType.alcoholic:
      case DrinkType.nonAlcoholic:
        return 'a';
      case DrinkType.cocktail:
      case DrinkType.ordinary:
        return 'c';
    }
  }
}
