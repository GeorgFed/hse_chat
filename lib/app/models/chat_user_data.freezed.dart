// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatUserDataTearOff {
  const _$ChatUserDataTearOff();

  _ChatUserData call(
      {required String uid,
      required String name,
      String? avatar_url = "",
      required String status,
      String? group_id}) {
    return _ChatUserData(
      uid: uid,
      name: name,
      avatar_url: avatar_url,
      status: status,
      group_id: group_id,
    );
  }
}

/// @nodoc
const $ChatUserData = _$ChatUserDataTearOff();

/// @nodoc
mixin _$ChatUserData {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatar_url => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get group_id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatUserDataCopyWith<ChatUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserDataCopyWith<$Res> {
  factory $ChatUserDataCopyWith(
          ChatUserData value, $Res Function(ChatUserData) then) =
      _$ChatUserDataCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String name,
      String? avatar_url,
      String status,
      String? group_id});
}

/// @nodoc
class _$ChatUserDataCopyWithImpl<$Res> implements $ChatUserDataCopyWith<$Res> {
  _$ChatUserDataCopyWithImpl(this._value, this._then);

  final ChatUserData _value;
  // ignore: unused_field
  final $Res Function(ChatUserData) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? avatar_url = freezed,
    Object? status = freezed,
    Object? group_id = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: group_id == freezed
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatUserDataCopyWith<$Res>
    implements $ChatUserDataCopyWith<$Res> {
  factory _$ChatUserDataCopyWith(
          _ChatUserData value, $Res Function(_ChatUserData) then) =
      __$ChatUserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String name,
      String? avatar_url,
      String status,
      String? group_id});
}

/// @nodoc
class __$ChatUserDataCopyWithImpl<$Res> extends _$ChatUserDataCopyWithImpl<$Res>
    implements _$ChatUserDataCopyWith<$Res> {
  __$ChatUserDataCopyWithImpl(
      _ChatUserData _value, $Res Function(_ChatUserData) _then)
      : super(_value, (v) => _then(v as _ChatUserData));

  @override
  _ChatUserData get _value => super._value as _ChatUserData;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? avatar_url = freezed,
    Object? status = freezed,
    Object? group_id = freezed,
  }) {
    return _then(_ChatUserData(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      group_id: group_id == freezed
          ? _value.group_id
          : group_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatUserData implements _ChatUserData {
  _$_ChatUserData(
      {required this.uid,
      required this.name,
      this.avatar_url = "",
      required this.status,
      this.group_id});

  @override
  final String uid;
  @override
  final String name;
  @JsonKey()
  @override
  final String? avatar_url;
  @override
  final String status;
  @override
  final String? group_id;

  @override
  String toString() {
    return 'ChatUserData(uid: $uid, name: $name, avatar_url: $avatar_url, status: $status, group_id: $group_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatUserData &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.avatar_url, avatar_url) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.group_id, group_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar_url),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(group_id));

  @JsonKey(ignore: true)
  @override
  _$ChatUserDataCopyWith<_ChatUserData> get copyWith =>
      __$ChatUserDataCopyWithImpl<_ChatUserData>(this, _$identity);
}

abstract class _ChatUserData implements ChatUserData {
  factory _ChatUserData(
      {required String uid,
      required String name,
      String? avatar_url,
      required String status,
      String? group_id}) = _$_ChatUserData;

  @override
  String get uid;
  @override
  String get name;
  @override
  String? get avatar_url;
  @override
  String get status;
  @override
  String? get group_id;
  @override
  @JsonKey(ignore: true)
  _$ChatUserDataCopyWith<_ChatUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
