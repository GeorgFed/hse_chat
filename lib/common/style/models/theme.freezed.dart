// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HThemeDataTearOff {
  const _$HThemeDataTearOff();

  _HThemeData call({required Color backgroundColor, required Color primary}) {
    return _HThemeData(
      backgroundColor: backgroundColor,
      primary: primary,
    );
  }
}

/// @nodoc
const $HThemeData = _$HThemeDataTearOff();

/// @nodoc
mixin _$HThemeData {
  Color get backgroundColor => throw _privateConstructorUsedError;
  Color get primary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HThemeDataCopyWith<HThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HThemeDataCopyWith<$Res> {
  factory $HThemeDataCopyWith(
          HThemeData value, $Res Function(HThemeData) then) =
      _$HThemeDataCopyWithImpl<$Res>;
  $Res call({Color backgroundColor, Color primary});
}

/// @nodoc
class _$HThemeDataCopyWithImpl<$Res> implements $HThemeDataCopyWith<$Res> {
  _$HThemeDataCopyWithImpl(this._value, this._then);

  final HThemeData _value;
  // ignore: unused_field
  final $Res Function(HThemeData) _then;

  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? primary = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      primary: primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$HThemeDataCopyWith<$Res> implements $HThemeDataCopyWith<$Res> {
  factory _$HThemeDataCopyWith(
          _HThemeData value, $Res Function(_HThemeData) then) =
      __$HThemeDataCopyWithImpl<$Res>;
  @override
  $Res call({Color backgroundColor, Color primary});
}

/// @nodoc
class __$HThemeDataCopyWithImpl<$Res> extends _$HThemeDataCopyWithImpl<$Res>
    implements _$HThemeDataCopyWith<$Res> {
  __$HThemeDataCopyWithImpl(
      _HThemeData _value, $Res Function(_HThemeData) _then)
      : super(_value, (v) => _then(v as _HThemeData));

  @override
  _HThemeData get _value => super._value as _HThemeData;

  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? primary = freezed,
  }) {
    return _then(_HThemeData(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      primary: primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_HThemeData implements _HThemeData {
  const _$_HThemeData({required this.backgroundColor, required this.primary});

  @override
  final Color backgroundColor;
  @override
  final Color primary;

  @override
  String toString() {
    return 'HThemeData(backgroundColor: $backgroundColor, primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HThemeData &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.primary, primary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(primary));

  @JsonKey(ignore: true)
  @override
  _$HThemeDataCopyWith<_HThemeData> get copyWith =>
      __$HThemeDataCopyWithImpl<_HThemeData>(this, _$identity);
}

abstract class _HThemeData implements HThemeData {
  const factory _HThemeData(
      {required Color backgroundColor, required Color primary}) = _$_HThemeData;

  @override
  Color get backgroundColor;
  @override
  Color get primary;
  @override
  @JsonKey(ignore: true)
  _$HThemeDataCopyWith<_HThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}
