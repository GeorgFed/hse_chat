// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatItemViewModelTearOff {
  const _$ChatItemViewModelTearOff();

  _ChatItemViewModel call(
      {required String name,
      required String messageText,
      required String time,
      String? imageURL}) {
    return _ChatItemViewModel(
      name: name,
      messageText: messageText,
      time: time,
      imageURL: imageURL,
    );
  }
}

/// @nodoc
const $ChatItemViewModel = _$ChatItemViewModelTearOff();

/// @nodoc
mixin _$ChatItemViewModel {
  String get name => throw _privateConstructorUsedError;
  String get messageText => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatItemViewModelCopyWith<ChatItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemViewModelCopyWith<$Res> {
  factory $ChatItemViewModelCopyWith(
          ChatItemViewModel value, $Res Function(ChatItemViewModel) then) =
      _$ChatItemViewModelCopyWithImpl<$Res>;
  $Res call({String name, String messageText, String time, String? imageURL});
}

/// @nodoc
class _$ChatItemViewModelCopyWithImpl<$Res>
    implements $ChatItemViewModelCopyWith<$Res> {
  _$ChatItemViewModelCopyWithImpl(this._value, this._then);

  final ChatItemViewModel _value;
  // ignore: unused_field
  final $Res Function(ChatItemViewModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? messageText = freezed,
    Object? time = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatItemViewModelCopyWith<$Res>
    implements $ChatItemViewModelCopyWith<$Res> {
  factory _$ChatItemViewModelCopyWith(
          _ChatItemViewModel value, $Res Function(_ChatItemViewModel) then) =
      __$ChatItemViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String messageText, String time, String? imageURL});
}

/// @nodoc
class __$ChatItemViewModelCopyWithImpl<$Res>
    extends _$ChatItemViewModelCopyWithImpl<$Res>
    implements _$ChatItemViewModelCopyWith<$Res> {
  __$ChatItemViewModelCopyWithImpl(
      _ChatItemViewModel _value, $Res Function(_ChatItemViewModel) _then)
      : super(_value, (v) => _then(v as _ChatItemViewModel));

  @override
  _ChatItemViewModel get _value => super._value as _ChatItemViewModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? messageText = freezed,
    Object? time = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_ChatItemViewModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatItemViewModel implements _ChatItemViewModel {
  _$_ChatItemViewModel(
      {required this.name,
      required this.messageText,
      required this.time,
      this.imageURL});

  @override
  final String name;
  @override
  final String messageText;
  @override
  final String time;
  @override
  final String? imageURL;

  @override
  String toString() {
    return 'ChatItemViewModel(name: $name, messageText: $messageText, time: $time, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatItemViewModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.messageText, messageText) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(messageText),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(imageURL));

  @JsonKey(ignore: true)
  @override
  _$ChatItemViewModelCopyWith<_ChatItemViewModel> get copyWith =>
      __$ChatItemViewModelCopyWithImpl<_ChatItemViewModel>(this, _$identity);
}

abstract class _ChatItemViewModel implements ChatItemViewModel {
  factory _ChatItemViewModel(
      {required String name,
      required String messageText,
      required String time,
      String? imageURL}) = _$_ChatItemViewModel;

  @override
  String get name;
  @override
  String get messageText;
  @override
  String get time;
  @override
  String? get imageURL;
  @override
  @JsonKey(ignore: true)
  _$ChatItemViewModelCopyWith<_ChatItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
