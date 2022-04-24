// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthPageStateTearOff {
  const _$AuthPageStateTearOff();

  _AuthPageState call({AuthPageStatus status = AuthPageStatus.login}) {
    return _AuthPageState(
      status: status,
    );
  }
}

/// @nodoc
const $AuthPageState = _$AuthPageStateTearOff();

/// @nodoc
mixin _$AuthPageState {
  AuthPageStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res>;
  $Res call({AuthPageStatus status});
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  final AuthPageState _value;
  // ignore: unused_field
  final $Res Function(AuthPageState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthPageStatus,
    ));
  }
}

/// @nodoc
abstract class _$AuthPageStateCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$AuthPageStateCopyWith(
          _AuthPageState value, $Res Function(_AuthPageState) then) =
      __$AuthPageStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthPageStatus status});
}

/// @nodoc
class __$AuthPageStateCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res>
    implements _$AuthPageStateCopyWith<$Res> {
  __$AuthPageStateCopyWithImpl(
      _AuthPageState _value, $Res Function(_AuthPageState) _then)
      : super(_value, (v) => _then(v as _AuthPageState));

  @override
  _AuthPageState get _value => super._value as _AuthPageState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_AuthPageState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthPageStatus,
    ));
  }
}

/// @nodoc

class _$_AuthPageState implements _AuthPageState {
  _$_AuthPageState({this.status = AuthPageStatus.login});

  @JsonKey()
  @override
  final AuthPageStatus status;

  @override
  String toString() {
    return 'AuthPageState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthPageState &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$AuthPageStateCopyWith<_AuthPageState> get copyWith =>
      __$AuthPageStateCopyWithImpl<_AuthPageState>(this, _$identity);
}

abstract class _AuthPageState implements AuthPageState {
  factory _AuthPageState({AuthPageStatus status}) = _$_AuthPageState;

  @override
  AuthPageStatus get status;
  @override
  @JsonKey(ignore: true)
  _$AuthPageStateCopyWith<_AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
