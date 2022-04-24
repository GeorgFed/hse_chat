// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GradeTearOff {
  const _$GradeTearOff();

  _Grade call(
      {required String uid,
      required String value,
      required String assignmentUid}) {
    return _Grade(
      uid: uid,
      value: value,
      assignmentUid: assignmentUid,
    );
  }
}

/// @nodoc
const $Grade = _$GradeTearOff();

/// @nodoc
mixin _$Grade {
  String get uid => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get assignmentUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GradeCopyWith<Grade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradeCopyWith<$Res> {
  factory $GradeCopyWith(Grade value, $Res Function(Grade) then) =
      _$GradeCopyWithImpl<$Res>;
  $Res call({String uid, String value, String assignmentUid});
}

/// @nodoc
class _$GradeCopyWithImpl<$Res> implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._value, this._then);

  final Grade _value;
  // ignore: unused_field
  final $Res Function(Grade) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? value = freezed,
    Object? assignmentUid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentUid: assignmentUid == freezed
          ? _value.assignmentUid
          : assignmentUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GradeCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$GradeCopyWith(_Grade value, $Res Function(_Grade) then) =
      __$GradeCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String value, String assignmentUid});
}

/// @nodoc
class __$GradeCopyWithImpl<$Res> extends _$GradeCopyWithImpl<$Res>
    implements _$GradeCopyWith<$Res> {
  __$GradeCopyWithImpl(_Grade _value, $Res Function(_Grade) _then)
      : super(_value, (v) => _then(v as _Grade));

  @override
  _Grade get _value => super._value as _Grade;

  @override
  $Res call({
    Object? uid = freezed,
    Object? value = freezed,
    Object? assignmentUid = freezed,
  }) {
    return _then(_Grade(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentUid: assignmentUid == freezed
          ? _value.assignmentUid
          : assignmentUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Grade implements _Grade {
  _$_Grade(
      {required this.uid, required this.value, required this.assignmentUid});

  @override
  final String uid;
  @override
  final String value;
  @override
  final String assignmentUid;

  @override
  String toString() {
    return 'Grade(uid: $uid, value: $value, assignmentUid: $assignmentUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Grade &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.assignmentUid, assignmentUid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(assignmentUid));

  @JsonKey(ignore: true)
  @override
  _$GradeCopyWith<_Grade> get copyWith =>
      __$GradeCopyWithImpl<_Grade>(this, _$identity);
}

abstract class _Grade implements Grade {
  factory _Grade(
      {required String uid,
      required String value,
      required String assignmentUid}) = _$_Grade;

  @override
  String get uid;
  @override
  String get value;
  @override
  String get assignmentUid;
  @override
  @JsonKey(ignore: true)
  _$GradeCopyWith<_Grade> get copyWith => throw _privateConstructorUsedError;
}
