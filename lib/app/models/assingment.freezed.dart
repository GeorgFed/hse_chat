// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assingment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Assingment {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssingmentCopyWith<Assingment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssingmentCopyWith<$Res> {
  factory $AssingmentCopyWith(
          Assingment value, $Res Function(Assingment) then) =
      _$AssingmentCopyWithImpl<$Res, Assingment>;
  @useResult
  $Res call(
      {String uid,
      String title,
      String info,
      DateTime date,
      String tutorId,
      String? fileUrl,
      DateTime? deadline});
}

/// @nodoc
class _$AssingmentCopyWithImpl<$Res, $Val extends Assingment>
    implements $AssingmentCopyWith<$Res> {
  _$AssingmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? info = null,
    Object? date = null,
    Object? tutorId = null,
    Object? fileUrl = freezed,
    Object? deadline = freezed,
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
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssingmentCopyWith<$Res>
    implements $AssingmentCopyWith<$Res> {
  factory _$$_AssingmentCopyWith(
          _$_Assingment value, $Res Function(_$_Assingment) then) =
      __$$_AssingmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String title,
      String info,
      DateTime date,
      String tutorId,
      String? fileUrl,
      DateTime? deadline});
}

/// @nodoc
class __$$_AssingmentCopyWithImpl<$Res>
    extends _$AssingmentCopyWithImpl<$Res, _$_Assingment>
    implements _$$_AssingmentCopyWith<$Res> {
  __$$_AssingmentCopyWithImpl(
      _$_Assingment _value, $Res Function(_$_Assingment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? info = null,
    Object? date = null,
    Object? tutorId = null,
    Object? fileUrl = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$_Assingment(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Assingment implements _Assingment {
  _$_Assingment(
      {required this.uid,
      required this.title,
      required this.info,
      required this.date,
      required this.tutorId,
      this.fileUrl,
      this.deadline});

  @override
  final String uid;
  @override
  final String title;
  @override
  final String info;
  @override
  final DateTime date;
  @override
  final String tutorId;
  @override
  final String? fileUrl;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'Assingment(uid: $uid, title: $title, info: $info, date: $date, tutorId: $tutorId, fileUrl: $fileUrl, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Assingment &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uid, title, info, date, tutorId, fileUrl, deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssingmentCopyWith<_$_Assingment> get copyWith =>
      __$$_AssingmentCopyWithImpl<_$_Assingment>(this, _$identity);
}

abstract class _Assingment implements Assingment {
  factory _Assingment(
      {required final String uid,
      required final String title,
      required final String info,
      required final DateTime date,
      required final String tutorId,
      final String? fileUrl,
      final DateTime? deadline}) = _$_Assingment;

  @override
  String get uid;
  @override
  String get title;
  @override
  String get info;
  @override
  DateTime get date;
  @override
  String get tutorId;
  @override
  String? get fileUrl;
  @override
  DateTime? get deadline;
  @override
  @JsonKey(ignore: true)
  _$$_AssingmentCopyWith<_$_Assingment> get copyWith =>
      throw _privateConstructorUsedError;
}
