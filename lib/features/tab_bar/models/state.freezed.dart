// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabBarState {
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabBarStateCopyWith<TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res, TabBarState>;
  @useResult
  $Res call({int selectedTab});
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res, $Val extends TabBarState>
    implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabBarStateCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory _$$_TabBarStateCopyWith(
          _$_TabBarState value, $Res Function(_$_TabBarState) then) =
      __$$_TabBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedTab});
}

/// @nodoc
class __$$_TabBarStateCopyWithImpl<$Res>
    extends _$TabBarStateCopyWithImpl<$Res, _$_TabBarState>
    implements _$$_TabBarStateCopyWith<$Res> {
  __$$_TabBarStateCopyWithImpl(
      _$_TabBarState _value, $Res Function(_$_TabBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_$_TabBarState(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabBarState implements _TabBarState {
  const _$_TabBarState({this.selectedTab = 0});

  @override
  @JsonKey()
  final int selectedTab;

  @override
  String toString() {
    return 'TabBarState(selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabBarState &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabBarStateCopyWith<_$_TabBarState> get copyWith =>
      __$$_TabBarStateCopyWithImpl<_$_TabBarState>(this, _$identity);
}

abstract class _TabBarState implements TabBarState {
  const factory _TabBarState({final int selectedTab}) = _$_TabBarState;

  @override
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_TabBarStateCopyWith<_$_TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
