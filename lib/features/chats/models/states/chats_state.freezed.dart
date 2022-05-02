// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatsStateTearOff {
  const _$ChatsStateTearOff();

  _ChatsState call({List<ChatItemViewModel> chatItems = const []}) {
    return _ChatsState(
      chatItems: chatItems,
    );
  }
}

/// @nodoc
const $ChatsState = _$ChatsStateTearOff();

/// @nodoc
mixin _$ChatsState {
  List<ChatItemViewModel> get chatItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsStateCopyWith<ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res>;
  $Res call({List<ChatItemViewModel> chatItems});
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res> implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  final ChatsState _value;
  // ignore: unused_field
  final $Res Function(ChatsState) _then;

  @override
  $Res call({
    Object? chatItems = freezed,
  }) {
    return _then(_value.copyWith(
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as List<ChatItemViewModel>,
    ));
  }
}

/// @nodoc
abstract class _$ChatsStateCopyWith<$Res> implements $ChatsStateCopyWith<$Res> {
  factory _$ChatsStateCopyWith(
          _ChatsState value, $Res Function(_ChatsState) then) =
      __$ChatsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatItemViewModel> chatItems});
}

/// @nodoc
class __$ChatsStateCopyWithImpl<$Res> extends _$ChatsStateCopyWithImpl<$Res>
    implements _$ChatsStateCopyWith<$Res> {
  __$ChatsStateCopyWithImpl(
      _ChatsState _value, $Res Function(_ChatsState) _then)
      : super(_value, (v) => _then(v as _ChatsState));

  @override
  _ChatsState get _value => super._value as _ChatsState;

  @override
  $Res call({
    Object? chatItems = freezed,
  }) {
    return _then(_ChatsState(
      chatItems: chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as List<ChatItemViewModel>,
    ));
  }
}

/// @nodoc

class _$_ChatsState implements _ChatsState {
  _$_ChatsState({this.chatItems = const []});

  @JsonKey()
  @override
  final List<ChatItemViewModel> chatItems;

  @override
  String toString() {
    return 'ChatsState(chatItems: $chatItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatsState &&
            const DeepCollectionEquality().equals(other.chatItems, chatItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatItems));

  @JsonKey(ignore: true)
  @override
  _$ChatsStateCopyWith<_ChatsState> get copyWith =>
      __$ChatsStateCopyWithImpl<_ChatsState>(this, _$identity);
}

abstract class _ChatsState implements ChatsState {
  factory _ChatsState({List<ChatItemViewModel> chatItems}) = _$_ChatsState;

  @override
  List<ChatItemViewModel> get chatItems;
  @override
  @JsonKey(ignore: true)
  _$ChatsStateCopyWith<_ChatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
