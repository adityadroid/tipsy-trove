// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrinkDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(String drinkId) fromId,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? random,
    TResult? Function(String drinkId)? fromId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(String drinkId)? fromId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomDrinkEvent value) random,
    required TResult Function(FromIdDrinkEvent value) fromId,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomDrinkEvent value)? random,
    TResult? Function(FromIdDrinkEvent value)? fromId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomDrinkEvent value)? random,
    TResult Function(FromIdDrinkEvent value)? fromId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkDetailEventCopyWith<$Res> {
  factory $DrinkDetailEventCopyWith(
          DrinkDetailEvent value, $Res Function(DrinkDetailEvent) then) =
      _$DrinkDetailEventCopyWithImpl<$Res, DrinkDetailEvent>;
}

/// @nodoc
class _$DrinkDetailEventCopyWithImpl<$Res, $Val extends DrinkDetailEvent>
    implements $DrinkDetailEventCopyWith<$Res> {
  _$DrinkDetailEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RandomDrinkEventCopyWith<$Res> {
  factory _$$RandomDrinkEventCopyWith(
          _$RandomDrinkEvent value, $Res Function(_$RandomDrinkEvent) then) =
      __$$RandomDrinkEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RandomDrinkEventCopyWithImpl<$Res>
    extends _$DrinkDetailEventCopyWithImpl<$Res, _$RandomDrinkEvent>
    implements _$$RandomDrinkEventCopyWith<$Res> {
  __$$RandomDrinkEventCopyWithImpl(
      _$RandomDrinkEvent _value, $Res Function(_$RandomDrinkEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RandomDrinkEvent implements RandomDrinkEvent {
  const _$RandomDrinkEvent();

  @override
  String toString() {
    return 'DrinkDetailEvent.random()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RandomDrinkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(String drinkId) fromId,
  }) {
    return random();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? random,
    TResult? Function(String drinkId)? fromId,
  }) {
    return random?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(String drinkId)? fromId,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomDrinkEvent value) random,
    required TResult Function(FromIdDrinkEvent value) fromId,
  }) {
    return random(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomDrinkEvent value)? random,
    TResult? Function(FromIdDrinkEvent value)? fromId,
  }) {
    return random?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomDrinkEvent value)? random,
    TResult Function(FromIdDrinkEvent value)? fromId,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random(this);
    }
    return orElse();
  }
}

abstract class RandomDrinkEvent implements DrinkDetailEvent {
  const factory RandomDrinkEvent() = _$RandomDrinkEvent;
}

/// @nodoc
abstract class _$$FromIdDrinkEventCopyWith<$Res> {
  factory _$$FromIdDrinkEventCopyWith(
          _$FromIdDrinkEvent value, $Res Function(_$FromIdDrinkEvent) then) =
      __$$FromIdDrinkEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String drinkId});
}

/// @nodoc
class __$$FromIdDrinkEventCopyWithImpl<$Res>
    extends _$DrinkDetailEventCopyWithImpl<$Res, _$FromIdDrinkEvent>
    implements _$$FromIdDrinkEventCopyWith<$Res> {
  __$$FromIdDrinkEventCopyWithImpl(
      _$FromIdDrinkEvent _value, $Res Function(_$FromIdDrinkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinkId = null,
  }) {
    return _then(_$FromIdDrinkEvent(
      drinkId: null == drinkId
          ? _value.drinkId
          : drinkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FromIdDrinkEvent implements FromIdDrinkEvent {
  const _$FromIdDrinkEvent({required this.drinkId});

  @override
  final String drinkId;

  @override
  String toString() {
    return 'DrinkDetailEvent.fromId(drinkId: $drinkId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromIdDrinkEvent &&
            (identical(other.drinkId, drinkId) || other.drinkId == drinkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, drinkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromIdDrinkEventCopyWith<_$FromIdDrinkEvent> get copyWith =>
      __$$FromIdDrinkEventCopyWithImpl<_$FromIdDrinkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(String drinkId) fromId,
  }) {
    return fromId(drinkId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? random,
    TResult? Function(String drinkId)? fromId,
  }) {
    return fromId?.call(drinkId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(String drinkId)? fromId,
    required TResult orElse(),
  }) {
    if (fromId != null) {
      return fromId(drinkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomDrinkEvent value) random,
    required TResult Function(FromIdDrinkEvent value) fromId,
  }) {
    return fromId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomDrinkEvent value)? random,
    TResult? Function(FromIdDrinkEvent value)? fromId,
  }) {
    return fromId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomDrinkEvent value)? random,
    TResult Function(FromIdDrinkEvent value)? fromId,
    required TResult orElse(),
  }) {
    if (fromId != null) {
      return fromId(this);
    }
    return orElse();
  }
}

abstract class FromIdDrinkEvent implements DrinkDetailEvent {
  const factory FromIdDrinkEvent({required final String drinkId}) =
      _$FromIdDrinkEvent;

  String get drinkId;
  @JsonKey(ignore: true)
  _$$FromIdDrinkEventCopyWith<_$FromIdDrinkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrinkDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DrinkDetail detail) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DrinkDetail detail)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DrinkDetail detail)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkDetailStateCopyWith<$Res> {
  factory $DrinkDetailStateCopyWith(
          DrinkDetailState value, $Res Function(DrinkDetailState) then) =
      _$DrinkDetailStateCopyWithImpl<$Res, DrinkDetailState>;
}

/// @nodoc
class _$DrinkDetailStateCopyWithImpl<$Res, $Val extends DrinkDetailState>
    implements $DrinkDetailStateCopyWith<$Res> {
  _$DrinkDetailStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DrinkDetailStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DrinkDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DrinkDetail detail) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DrinkDetail detail)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DrinkDetail detail)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DrinkDetailState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({DrinkDetail detail});

  $DrinkDetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$DrinkDetailStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$Loaded(
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as DrinkDetail,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DrinkDetailCopyWith<$Res> get detail {
    return $DrinkDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.detail);

  @override
  final DrinkDetail detail;

  @override
  String toString() {
    return 'DrinkDetailState.loaded(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DrinkDetail detail) loaded,
    required TResult Function() error,
  }) {
    return loaded(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DrinkDetail detail)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DrinkDetail detail)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements DrinkDetailState {
  const factory Loaded(final DrinkDetail detail) = _$Loaded;

  DrinkDetail get detail;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$DrinkDetailStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'DrinkDetailState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DrinkDetail detail) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(DrinkDetail detail)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DrinkDetail detail)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements DrinkDetailState {
  const factory Error() = _$Error;
}
