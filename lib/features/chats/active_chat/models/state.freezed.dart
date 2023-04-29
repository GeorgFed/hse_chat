// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$ActiveChatStateCopyWithImpl<$Res, ActiveChatState>;
  @useResult
  $Res call({bool isLoading, List<Message> messages});
}

/// @nodoc
class _$ActiveChatStateCopyWithImpl<$Res, $Val extends ActiveChatState>
    implements $ActiveChatStateCopyWith<$Res> {
  _$ActiveChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveChatStateCopyWith<$Res>
    implements $ActiveChatStateCopyWith<$Res> {
  factory _$$_ActiveChatStateCopyWith(
          _$_ActiveChatState value, $Res Function(_$_ActiveChatState) then) =
      __$$_ActiveChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Message> messages});
}

/// @nodoc
class __$$_ActiveChatStateCopyWithImpl<$Res>
    extends _$ActiveChatStateCopyWithImpl<$Res, _$_ActiveChatState>
    implements _$$_ActiveChatStateCopyWith<$Res> {
  __$$_ActiveChatStateCopyWithImpl(
      _$_ActiveChatState _value, $Res Function(_$_ActiveChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? messages = null,
  }) {
    return _then(_$_ActiveChatState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_ActiveChatState implements _ActiveChatState {
  _$_ActiveChatState(
      {this.isLoading = false, final List<Message> messages = const []})
      : _messages = messages;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ActiveChatState(isLoading: $isLoading, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveChatState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveChatStateCopyWith<_$_ActiveChatState> get copyWith =>
      __$$_ActiveChatStateCopyWithImpl<_$_ActiveChatState>(this, _$identity);
}

abstract class _ActiveChatState implements ActiveChatState {
  factory _ActiveChatState(
      {final bool isLoading,
      final List<Message> messages}) = _$_ActiveChatState;

  @override
  bool get isLoading;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveChatStateCopyWith<_$_ActiveChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
