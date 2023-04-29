// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$GradeCopyWithImpl<$Res, Grade>;
  @useResult
  $Res call({String uid, String value, String assignmentUid});
}

/// @nodoc
class _$GradeCopyWithImpl<$Res, $Val extends Grade>
    implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? value = null,
    Object? assignmentUid = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentUid: null == assignmentUid
          ? _value.assignmentUid
          : assignmentUid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradeCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$$_GradeCopyWith(_$_Grade value, $Res Function(_$_Grade) then) =
      __$$_GradeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String value, String assignmentUid});
}

/// @nodoc
class __$$_GradeCopyWithImpl<$Res> extends _$GradeCopyWithImpl<$Res, _$_Grade>
    implements _$$_GradeCopyWith<$Res> {
  __$$_GradeCopyWithImpl(_$_Grade _value, $Res Function(_$_Grade) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? value = null,
    Object? assignmentUid = null,
  }) {
    return _then(_$_Grade(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      assignmentUid: null == assignmentUid
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
            other is _$_Grade &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.assignmentUid, assignmentUid) ||
                other.assignmentUid == assignmentUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, value, assignmentUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradeCopyWith<_$_Grade> get copyWith =>
      __$$_GradeCopyWithImpl<_$_Grade>(this, _$identity);
}

abstract class _Grade implements Grade {
  factory _Grade(
      {required final String uid,
      required final String value,
      required final String assignmentUid}) = _$_Grade;

  @override
  String get uid;
  @override
  String get value;
  @override
  String get assignmentUid;
  @override
  @JsonKey(ignore: true)
  _$$_GradeCopyWith<_$_Grade> get copyWith =>
      throw _privateConstructorUsedError;
}
