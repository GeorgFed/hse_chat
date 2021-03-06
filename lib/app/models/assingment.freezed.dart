// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assingment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AssingmentTearOff {
  const _$AssingmentTearOff();

  _Assingment call(
      {required String uid,
      required String title,
      required String info,
      required DateTime date,
      required String tutorId,
      String? fileUrl,
      DateTime? deadline}) {
    return _Assingment(
      uid: uid,
      title: title,
      info: info,
      date: date,
      tutorId: tutorId,
      fileUrl: fileUrl,
      deadline: deadline,
    );
  }
}

/// @nodoc
const $Assingment = _$AssingmentTearOff();

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
      _$AssingmentCopyWithImpl<$Res>;
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
class _$AssingmentCopyWithImpl<$Res> implements $AssingmentCopyWith<$Res> {
  _$AssingmentCopyWithImpl(this._value, this._then);

  final Assingment _value;
  // ignore: unused_field
  final $Res Function(Assingment) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? info = freezed,
    Object? date = freezed,
    Object? tutorId = freezed,
    Object? fileUrl = freezed,
    Object? deadline = freezed,
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
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AssingmentCopyWith<$Res> implements $AssingmentCopyWith<$Res> {
  factory _$AssingmentCopyWith(
          _Assingment value, $Res Function(_Assingment) then) =
      __$AssingmentCopyWithImpl<$Res>;
  @override
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
class __$AssingmentCopyWithImpl<$Res> extends _$AssingmentCopyWithImpl<$Res>
    implements _$AssingmentCopyWith<$Res> {
  __$AssingmentCopyWithImpl(
      _Assingment _value, $Res Function(_Assingment) _then)
      : super(_value, (v) => _then(v as _Assingment));

  @override
  _Assingment get _value => super._value as _Assingment;

  @override
  $Res call({
    Object? uid = freezed,
    Object? title = freezed,
    Object? info = freezed,
    Object? date = freezed,
    Object? tutorId = freezed,
    Object? fileUrl = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_Assingment(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: deadline == freezed
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
            other is _Assingment &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality().equals(other.fileUrl, fileUrl) &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(fileUrl),
      const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$AssingmentCopyWith<_Assingment> get copyWith =>
      __$AssingmentCopyWithImpl<_Assingment>(this, _$identity);
}

abstract class _Assingment implements Assingment {
  factory _Assingment(
      {required String uid,
      required String title,
      required String info,
      required DateTime date,
      required String tutorId,
      String? fileUrl,
      DateTime? deadline}) = _$_Assingment;

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
  _$AssingmentCopyWith<_Assingment> get copyWith =>
      throw _privateConstructorUsedError;
}
