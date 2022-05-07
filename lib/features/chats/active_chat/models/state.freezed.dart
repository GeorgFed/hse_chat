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
class _$ActiveChatStateTearOff {
  const _$ActiveChatStateTearOff();

  _ActiveChatState call(
      {bool isLoading = false, List<Message> messages = const []}) {
    return _ActiveChatState(
      isLoading: isLoading,
      messages: messages,
    );
  }
}

/// @nodoc
const $ActiveChatState = _$ActiveChatStateTearOff();

/// @nodoc
mixin _$ActiveChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveChatStateCopyWith<ActiveChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveChatStateCopyWith<$Res> {
  factory $ActiveChatStateCopyWith(
          ActiveChatState value, $Res Function(ActiveChatState) then) =
      _$ActiveChatStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Message> messages});
}

/// @nodoc
class _$ActiveChatStateCopyWithImpl<$Res>
    implements $ActiveChatStateCopyWith<$Res> {
  _$ActiveChatStateCopyWithImpl(this._value, this._then);

  final ActiveChatState _value;
  // ignore: unused_field
  final $Res Function(ActiveChatState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
abstract class _$ActiveChatStateCopyWith<$Res>
    implements $ActiveChatStateCopyWith<$Res> {
  factory _$ActiveChatStateCopyWith(
          _ActiveChatState value, $Res Function(_ActiveChatState) then) =
      __$ActiveChatStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Message> messages});
}

/// @nodoc
class __$ActiveChatStateCopyWithImpl<$Res>
    extends _$ActiveChatStateCopyWithImpl<$Res>
    implements _$ActiveChatStateCopyWith<$Res> {
  __$ActiveChatStateCopyWithImpl(
      _ActiveChatState _value, $Res Function(_ActiveChatState) _then)
      : super(_value, (v) => _then(v as _ActiveChatState));

  @override
  _ActiveChatState get _value => super._value as _ActiveChatState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? messages = freezed,
  }) {
    return _then(_ActiveChatState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_ActiveChatState implements _ActiveChatState {
  _$_ActiveChatState({this.isLoading = false, this.messages = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Message> messages;

  @override
  String toString() {
    return 'ActiveChatState(isLoading: $isLoading, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveChatState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$ActiveChatStateCopyWith<_ActiveChatState> get copyWith =>
      __$ActiveChatStateCopyWithImpl<_ActiveChatState>(this, _$identity);
}

abstract class _ActiveChatState implements ActiveChatState {
  factory _ActiveChatState({bool isLoading, List<Message> messages}) =
      _$_ActiveChatState;

  @override
  bool get isLoading;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$ActiveChatStateCopyWith<_ActiveChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
