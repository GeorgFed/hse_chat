// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatUserTearOff {
  const _$ChatUserTearOff();

  _ChatUser call({required String uid}) {
    return _ChatUser(
      uid: uid,
    );
  }
}

/// @nodoc
const $ChatUser = _$ChatUserTearOff();

/// @nodoc
mixin _$ChatUser {
  String get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatUserCopyWith<ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserCopyWith<$Res> {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) then) =
      _$ChatUserCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$ChatUserCopyWithImpl<$Res> implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._value, this._then);

  final ChatUser _value;
  // ignore: unused_field
  final $Res Function(ChatUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChatUserCopyWith<$Res> implements $ChatUserCopyWith<$Res> {
  factory _$ChatUserCopyWith(_ChatUser value, $Res Function(_ChatUser) then) =
      __$ChatUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$ChatUserCopyWithImpl<$Res> extends _$ChatUserCopyWithImpl<$Res>
    implements _$ChatUserCopyWith<$Res> {
  __$ChatUserCopyWithImpl(_ChatUser _value, $Res Function(_ChatUser) _then)
      : super(_value, (v) => _then(v as _ChatUser));

  @override
  _ChatUser get _value => super._value as _ChatUser;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_ChatUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatUser implements _ChatUser {
  _$_ChatUser({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'ChatUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatUser &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);
}

abstract class _ChatUser implements ChatUser {
  factory _ChatUser({required String uid}) = _$_ChatUser;

  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}
