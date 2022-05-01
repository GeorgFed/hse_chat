// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _ChatUser call(
      {required String uid,
      required String title,
      List<String> usersId = const [],
      List<String> messagesId = const []}) {
    return _ChatUser(
      uid: uid,
      title: title,
      usersId: usersId,
      messagesId: messagesId,
    );
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get usersId => throw _privateConstructorUsedError;
  List<String> get messagesId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String title,
      List<String> usersId,
      List<String> messagesId});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? usersId = freezed,
    Object? messagesId = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: usersId == freezed
          ? _value.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messagesId: messagesId == freezed
          ? _value.messagesId
          : messagesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ChatUserCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatUserCopyWith(_ChatUser value, $Res Function(_ChatUser) then) =
      __$ChatUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String title,
      List<String> usersId,
      List<String> messagesId});
}

/// @nodoc
class __$ChatUserCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatUserCopyWith<$Res> {
  __$ChatUserCopyWithImpl(_ChatUser _value, $Res Function(_ChatUser) _then)
      : super(_value, (v) => _then(v as _ChatUser));

  @override
  _ChatUser get _value => super._value as _ChatUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? usersId = freezed,
    Object? messagesId = freezed,
  }) {
    return _then(_ChatUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: usersId == freezed
          ? _value.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messagesId: messagesId == freezed
          ? _value.messagesId
          : messagesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ChatUser implements _ChatUser {
  _$_ChatUser(
      {required this.uid,
      required this.title,
      this.usersId = const [],
      this.messagesId = const []});

  @override
  final String uid;
  @override
  final String title;
  @JsonKey()
  @override
  final List<String> usersId;
  @JsonKey()
  @override
  final List<String> messagesId;

  @override
  String toString() {
    return 'Chat(uid: $uid, title: $title, usersId: $usersId, messagesId: $messagesId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.usersId, usersId) &&
            const DeepCollectionEquality()
                .equals(other.messagesId, messagesId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(usersId),
      const DeepCollectionEquality().hash(messagesId));

  @JsonKey(ignore: true)
  @override
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);
}

abstract class _ChatUser implements Chat {
  factory _ChatUser(
      {required String uid,
      required String title,
      List<String> usersId,
      List<String> messagesId}) = _$_ChatUser;

  @override
  String get uid;
  @override
  String get title;
  @override
  List<String> get usersId;
  @override
  List<String> get messagesId;
  @override
  @JsonKey(ignore: true)
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}
