// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatItemViewModel {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get messageText => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatItemViewModelCopyWith<ChatItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemViewModelCopyWith<$Res> {
  factory $ChatItemViewModelCopyWith(
          ChatItemViewModel value, $Res Function(ChatItemViewModel) then) =
      _$ChatItemViewModelCopyWithImpl<$Res, ChatItemViewModel>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String? messageText,
      String? time,
      String? imageURL});
}

/// @nodoc
class _$ChatItemViewModelCopyWithImpl<$Res, $Val extends ChatItemViewModel>
    implements $ChatItemViewModelCopyWith<$Res> {
  _$ChatItemViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? messageText = freezed,
    Object? time = freezed,
    Object? imageURL = freezed,
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
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatItemViewModelCopyWith<$Res>
    implements $ChatItemViewModelCopyWith<$Res> {
  factory _$$_ChatItemViewModelCopyWith(_$_ChatItemViewModel value,
          $Res Function(_$_ChatItemViewModel) then) =
      __$$_ChatItemViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String? messageText,
      String? time,
      String? imageURL});
}

/// @nodoc
class __$$_ChatItemViewModelCopyWithImpl<$Res>
    extends _$ChatItemViewModelCopyWithImpl<$Res, _$_ChatItemViewModel>
    implements _$$_ChatItemViewModelCopyWith<$Res> {
  __$$_ChatItemViewModelCopyWithImpl(
      _$_ChatItemViewModel _value, $Res Function(_$_ChatItemViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? messageText = freezed,
    Object? time = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_$_ChatItemViewModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: freezed == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatItemViewModel implements _ChatItemViewModel {
  _$_ChatItemViewModel(
      {required this.uid,
      required this.name,
      this.messageText,
      this.time,
      this.imageURL});

  @override
  final String uid;
  @override
  final String name;
  @override
  final String? messageText;
  @override
  final String? time;
  @override
  final String? imageURL;

  @override
  String toString() {
    return 'ChatItemViewModel(uid: $uid, name: $name, messageText: $messageText, time: $time, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatItemViewModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, name, messageText, time, imageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatItemViewModelCopyWith<_$_ChatItemViewModel> get copyWith =>
      __$$_ChatItemViewModelCopyWithImpl<_$_ChatItemViewModel>(
          this, _$identity);
}

abstract class _ChatItemViewModel implements ChatItemViewModel {
  factory _ChatItemViewModel(
      {required final String uid,
      required final String name,
      final String? messageText,
      final String? time,
      final String? imageURL}) = _$_ChatItemViewModel;

  @override
  String get uid;
  @override
  String get name;
  @override
  String? get messageText;
  @override
  String? get time;
  @override
  String? get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$_ChatItemViewModelCopyWith<_$_ChatItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
