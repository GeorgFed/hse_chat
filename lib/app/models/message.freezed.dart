// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {required String uid,
      required String chatUid,
      required String userUid,
      required String message,
      required DateTime time}) {
    return _Message(
      uid: uid,
      chatUid: chatUid,
      userUid: userUid,
      message: message,
      time: time,
    );
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get uid => throw _privateConstructorUsedError;
  String get chatUid => throw _privateConstructorUsedError;
  String get userUid => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String chatUid,
      String userUid,
      String message,
      DateTime time});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? chatUid = freezed,
    Object? userUid = freezed,
    Object? message = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      chatUid: chatUid == freezed
          ? _value.chatUid
          : chatUid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String chatUid,
      String userUid,
      String message,
      DateTime time});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? uid = freezed,
    Object? chatUid = freezed,
    Object? userUid = freezed,
    Object? message = freezed,
    Object? time = freezed,
  }) {
    return _then(_Message(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      chatUid: chatUid == freezed
          ? _value.chatUid
          : chatUid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Message implements _Message {
  _$_Message(
      {required this.uid,
      required this.chatUid,
      required this.userUid,
      required this.message,
      required this.time});

  @override
  final String uid;
  @override
  final String chatUid;
  @override
  final String userUid;
  @override
  final String message;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Message(uid: $uid, chatUid: $chatUid, userUid: $userUid, message: $message, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.chatUid, chatUid) &&
            const DeepCollectionEquality().equals(other.userUid, userUid) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(chatUid),
      const DeepCollectionEquality().hash(userUid),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message implements Message {
  factory _Message(
      {required String uid,
      required String chatUid,
      required String userUid,
      required String message,
      required DateTime time}) = _$_Message;

  @override
  String get uid;
  @override
  String get chatUid;
  @override
  String get userUid;
  @override
  String get message;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
