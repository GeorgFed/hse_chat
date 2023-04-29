// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$HThemeDataCopyWithImpl<$Res, HThemeData>;
  @useResult
  $Res call({Color backgroundColor, Color primary});
}

/// @nodoc
class _$HThemeDataCopyWithImpl<$Res, $Val extends HThemeData>
    implements $HThemeDataCopyWith<$Res> {
  _$HThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? primary = null,
  }) {
    return _then(_value.copyWith(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HThemeDataCopyWith<$Res>
    implements $HThemeDataCopyWith<$Res> {
  factory _$$_HThemeDataCopyWith(
          _$_HThemeData value, $Res Function(_$_HThemeData) then) =
      __$$_HThemeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color backgroundColor, Color primary});
}

/// @nodoc
class __$$_HThemeDataCopyWithImpl<$Res>
    extends _$HThemeDataCopyWithImpl<$Res, _$_HThemeData>
    implements _$$_HThemeDataCopyWith<$Res> {
  __$$_HThemeDataCopyWithImpl(
      _$_HThemeData _value, $Res Function(_$_HThemeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = null,
    Object? primary = null,
  }) {
    return _then(_$_HThemeData(
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      primary: null == primary
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
            other is _$_HThemeData &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, primary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HThemeDataCopyWith<_$_HThemeData> get copyWith =>
      __$$_HThemeDataCopyWithImpl<_$_HThemeData>(this, _$identity);
}

abstract class _HThemeData implements HThemeData {
  const factory _HThemeData(
      {required final Color backgroundColor,
      required final Color primary}) = _$_HThemeData;

  @override
  Color get backgroundColor;
  @override
  Color get primary;
  @override
  @JsonKey(ignore: true)
  _$$_HThemeDataCopyWith<_$_HThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}
