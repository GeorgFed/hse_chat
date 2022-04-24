// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {required String uid,
      required String name,
      required List<String> studentsIds}) {
    return _Group(
      uid: uid,
      name: name,
      studentsIds: studentsIds,
    );
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get studentsIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call({String uid, String name, List<String> studentsIds});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? studentsIds = freezed,
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
      studentsIds: studentsIds == freezed
          ? _value.studentsIds
          : studentsIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String name, List<String> studentsIds});
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? studentsIds = freezed,
  }) {
    return _then(_Group(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      studentsIds: studentsIds == freezed
          ? _value.studentsIds
          : studentsIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Group implements _Group {
  _$_Group({required this.uid, required this.name, required this.studentsIds});

  @override
  final String uid;
  @override
  final String name;
  @override
  final List<String> studentsIds;

  @override
  String toString() {
    return 'Group(uid: $uid, name: $name, studentsIds: $studentsIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Group &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.studentsIds, studentsIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(studentsIds));

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);
}

abstract class _Group implements Group {
  factory _Group(
      {required String uid,
      required String name,
      required List<String> studentsIds}) = _$_Group;

  @override
  String get uid;
  @override
  String get name;
  @override
  List<String> get studentsIds;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith => throw _privateConstructorUsedError;
}
