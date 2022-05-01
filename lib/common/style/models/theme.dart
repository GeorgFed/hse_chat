import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../colors.dart';

part 'theme.freezed.dart';

@freezed
class HThemeData with _$HThemeData {
  const factory HThemeData({
    required Color backgroundColor,
    required Color primary,
  }) = _HThemeData;

  static HThemeData get light => const HThemeData(
        backgroundColor: HThemeColors.white,
        primary: HThemeColors.blue1,
      );

  static HThemeData get dark => const HThemeData(
        backgroundColor: HThemeColors.black,
        primary: HThemeColors.blue1,
      );
}
