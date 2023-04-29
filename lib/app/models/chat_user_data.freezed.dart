// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatUserData {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  List<String> get gradesList => throw _privateConstructorUsedError;
  List<String> get assignmentsList => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatUserDataCopyWith<ChatUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserDataCopyWith<$Res> {
  factory $ChatUserDataCopyWith(
          ChatUserData value, $Res Function(ChatUserData) then) =
      _$ChatUserDataCopyWithImpl<$Res, ChatUserData>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String status,
      String avatarUrl,
      List<String> gradesList,
      List<String> assignmentsList,
      String? groupId});
}

/// @nodoc
class _$ChatUserDataCopyWithImpl<$Res, $Val extends ChatUserData>
    implements $ChatUserDataCopyWith<$Res> {
  _$ChatUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? status = null,
    Object? avatarUrl = null,
    Object? gradesList = null,
    Object? assignmentsList = null,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gradesList: null == gradesList
          ? _value.gradesList
          : gradesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assignmentsList: null == assignmentsList
          ? _value.assignmentsList
          : assignmentsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatUserDataCopyWith<$Res>
    implements $ChatUserDataCopyWith<$Res> {
  factory _$$_ChatUserDataCopyWith(
          _$_ChatUserData value, $Res Function(_$_ChatUserData) then) =
      __$$_ChatUserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String status,
      String avatarUrl,
      List<String> gradesList,
      List<String> assignmentsList,
      String? groupId});
}

/// @nodoc
class __$$_ChatUserDataCopyWithImpl<$Res>
    extends _$ChatUserDataCopyWithImpl<$Res, _$_ChatUserData>
    implements _$$_ChatUserDataCopyWith<$Res> {
  __$$_ChatUserDataCopyWithImpl(
      _$_ChatUserData _value, $Res Function(_$_ChatUserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? status = null,
    Object? avatarUrl = null,
    Object? gradesList = null,
    Object? assignmentsList = null,
    Object? groupId = freezed,
  }) {
    return _then(_$_ChatUserData(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gradesList: null == gradesList
          ? _value._gradesList
          : gradesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assignmentsList: null == assignmentsList
          ? _value._assignmentsList
          : assignmentsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatUserData implements _ChatUserData {
  _$_ChatUserData(
      {required this.uid,
      required this.name,
      required this.status,
      this.avatarUrl = '',
      required final List<String> gradesList,
      required final List<String> assignmentsList,
      this.groupId})
      : _gradesList = gradesList,
        _assignmentsList = assignmentsList;

  @override
  final String uid;
  @override
  final String name;
  @override
  final String status;
  @override
  @JsonKey()
  final String avatarUrl;
  final List<String> _gradesList;
  @override
  List<String> get gradesList {
    if (_gradesList is EqualUnmodifiableListView) return _gradesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gradesList);
  }

  final List<String> _assignmentsList;
  @override
  List<String> get assignmentsList {
    if (_assignmentsList is EqualUnmodifiableListView) return _assignmentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignmentsList);
  }

  @override
  final String? groupId;

  @override
  String toString() {
    return 'ChatUserData(uid: $uid, name: $name, status: $status, avatarUrl: $avatarUrl, gradesList: $gradesList, assignmentsList: $assignmentsList, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUserData &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._gradesList, _gradesList) &&
            const DeepCollectionEquality()
                .equals(other._assignmentsList, _assignmentsList) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      status,
      avatarUrl,
      const DeepCollectionEquality().hash(_gradesList),
      const DeepCollectionEquality().hash(_assignmentsList),
      groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatUserDataCopyWith<_$_ChatUserData> get copyWith =>
      __$$_ChatUserDataCopyWithImpl<_$_ChatUserData>(this, _$identity);
}

abstract class _ChatUserData implements ChatUserData {
  factory _ChatUserData(
      {required final String uid,
      required final String name,
      required final String status,
      final String avatarUrl,
      required final List<String> gradesList,
      required final List<String> assignmentsList,
      final String? groupId}) = _$_ChatUserData;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get status;
  @override
  String get avatarUrl;
  @override
  List<String> get gradesList;
  @override
  List<String> get assignmentsList;
  @override
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$_ChatUserDataCopyWith<_$_ChatUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
