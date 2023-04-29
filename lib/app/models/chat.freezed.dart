// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {String uid,
      String title,
      List<String> usersId,
      List<String> messagesId});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? usersId = null,
    Object? messagesId = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: null == usersId
          ? _value.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messagesId: null == messagesId
          ? _value.messagesId
          : messagesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatUserCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatUserCopyWith(
          _$_ChatUser value, $Res Function(_$_ChatUser) then) =
      __$$_ChatUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String title,
      List<String> usersId,
      List<String> messagesId});
}

/// @nodoc
class __$$_ChatUserCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$_ChatUser>
    implements _$$_ChatUserCopyWith<$Res> {
  __$$_ChatUserCopyWithImpl(
      _$_ChatUser _value, $Res Function(_$_ChatUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? usersId = null,
    Object? messagesId = null,
  }) {
    return _then(_$_ChatUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: null == usersId
          ? _value._usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messagesId: null == messagesId
          ? _value._messagesId
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
      final List<String> usersId = const [],
      final List<String> messagesId = const []})
      : _usersId = usersId,
        _messagesId = messagesId;

  @override
  final String uid;
  @override
  final String title;
  final List<String> _usersId;
  @override
  @JsonKey()
  List<String> get usersId {
    if (_usersId is EqualUnmodifiableListView) return _usersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersId);
  }

  final List<String> _messagesId;
  @override
  @JsonKey()
  List<String> get messagesId {
    if (_messagesId is EqualUnmodifiableListView) return _messagesId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesId);
  }

  @override
  String toString() {
    return 'Chat(uid: $uid, title: $title, usersId: $usersId, messagesId: $messagesId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._usersId, _usersId) &&
            const DeepCollectionEquality()
                .equals(other._messagesId, _messagesId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      title,
      const DeepCollectionEquality().hash(_usersId),
      const DeepCollectionEquality().hash(_messagesId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatUserCopyWith<_$_ChatUser> get copyWith =>
      __$$_ChatUserCopyWithImpl<_$_ChatUser>(this, _$identity);
}

abstract class _ChatUser implements Chat {
  factory _ChatUser(
      {required final String uid,
      required final String title,
      final List<String> usersId,
      final List<String> messagesId}) = _$_ChatUser;

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
  _$$_ChatUserCopyWith<_$_ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}
