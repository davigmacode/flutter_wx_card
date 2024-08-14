import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxCardTheme extends WxSheetTheme<WxCardThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxCardTheme({
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
    WxCardStyle? style,
    WxSheetStyleResolver<WxCardStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    WxCardThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxCardThemeData>(
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
  static WxCardThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxCardThemeData>(context);
    return WxCardThemeData.from(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxCardThemeData of(BuildContext context) {
    final parent = WxCardTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxCardThemeAdaptive(context);
  }
}
