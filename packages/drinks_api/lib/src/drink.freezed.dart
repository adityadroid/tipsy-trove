// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Drink _$DrinkFromJson(Map<String, dynamic> json) {
  return _Drink.fromJson(json);
}

/// @nodoc
mixin _$Drink {
  String? get strDrink => throw _privateConstructorUsedError;
  String? get strDrinkThumb => throw _privateConstructorUsedError;
  String? get idDrink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinkCopyWith<Drink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkCopyWith<$Res> {
  factory $DrinkCopyWith(Drink value, $Res Function(Drink) then) =
      _$DrinkCopyWithImpl<$Res, Drink>;
  @useResult
  $Res call({String? strDrink, String? strDrinkThumb, String? idDrink});
}

/// @nodoc
class _$DrinkCopyWithImpl<$Res, $Val extends Drink>
    implements $DrinkCopyWith<$Res> {
  _$DrinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strDrink = freezed,
    Object? strDrinkThumb = freezed,
    Object? idDrink = freezed,
  }) {
    return _then(_value.copyWith(
      strDrink: freezed == strDrink
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrinkThumb: freezed == strDrinkThumb
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idDrink: freezed == idDrink
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DrinkCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$$_DrinkCopyWith(_$_Drink value, $Res Function(_$_Drink) then) =
      __$$_DrinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? strDrink, String? strDrinkThumb, String? idDrink});
}

/// @nodoc
class __$$_DrinkCopyWithImpl<$Res> extends _$DrinkCopyWithImpl<$Res, _$_Drink>
    implements _$$_DrinkCopyWith<$Res> {
  __$$_DrinkCopyWithImpl(_$_Drink _value, $Res Function(_$_Drink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strDrink = freezed,
    Object? strDrinkThumb = freezed,
    Object? idDrink = freezed,
  }) {
    return _then(_$_Drink(
      strDrink: freezed == strDrink
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String?,
      strDrinkThumb: freezed == strDrinkThumb
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      idDrink: freezed == idDrink
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Drink implements _Drink {
  const _$_Drink({this.strDrink, this.strDrinkThumb, this.idDrink});

  factory _$_Drink.fromJson(Map<String, dynamic> json) =>
      _$$_DrinkFromJson(json);

  @override
  final String? strDrink;
  @override
  final String? strDrinkThumb;
  @override
  final String? idDrink;

  @override
  String toString() {
    return 'Drink(strDrink: $strDrink, strDrinkThumb: $strDrinkThumb, idDrink: $idDrink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Drink &&
            (identical(other.strDrink, strDrink) ||
                other.strDrink == strDrink) &&
            (identical(other.strDrinkThumb, strDrinkThumb) ||
                other.strDrinkThumb == strDrinkThumb) &&
            (identical(other.idDrink, idDrink) || other.idDrink == idDrink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, strDrink, strDrinkThumb, idDrink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrinkCopyWith<_$_Drink> get copyWith =>
      __$$_DrinkCopyWithImpl<_$_Drink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrinkToJson(
      this,
    );
  }
}

abstract class _Drink implements Drink {
  const factory _Drink(
      {final String? strDrink,
      final String? strDrinkThumb,
      final String? idDrink}) = _$_Drink;

  factory _Drink.fromJson(Map<String, dynamic> json) = _$_Drink.fromJson;

  @override
  String? get strDrink;
  @override
  String? get strDrinkThumb;
  @override
  String? get idDrink;
  @override
  @JsonKey(ignore: true)
  _$$_DrinkCopyWith<_$_Drink> get copyWith =>
      throw _privateConstructorUsedError;
}
