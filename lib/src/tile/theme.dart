import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxCardTileTheme extends WxSheetTheme<WxCardTileThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxCardTileTheme({
    super.key,
    required super.data,
    required super.child,
  });

  /// Creates an [WxSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxSheetTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    bool? animated,
    Curve? curve,
    Duration? duration,
    WxCardTileStyle? style,
    WxSheetStyleResolver<WxCardTileStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    WxCardTileThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxCardTileThemeData>(
      key: key,
      data: data,
      animated: animated,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      mouseCursor: mouseCursor,
      child: child,
    );
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxCardTileThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxCardTileThemeData>(context);
    return WxCardTileThemeData.from(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxCardTileThemeData of(BuildContext context) {
    final parent = WxCardTileTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxCardTileThemeAdaptive(context);
  }
}
