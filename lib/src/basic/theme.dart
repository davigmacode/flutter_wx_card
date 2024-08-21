import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxCardTheme extends WxSheetTheme<WxCardThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxCard]s should look like.
  const WxCardTheme({
    super.key,
    required WxCardThemeData super.data,
    required super.child,
  });

  /// Creates an [WxCardTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxCardTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    bool? animated,
    Curve? curve,
    Duration? duration,
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
    WxCardStyle? style,
    WxSheetStyleResolver<WxCardStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    Widget? leading,
    Widget? trailing,
    WxCardThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxCardTheme.of(context);
        return WxCardTheme(
          key: key,
          data: parent.merge(data).copyWith(
                animated: animated,
                curve: curve,
                duration: duration,
                variant: variant,
                size: size,
                severity: severity,
                style: style,
                styleResolver: styleResolver,
                overlay: overlay,
                feedback: feedback,
                focusable: focusable,
                disabled: disabled,
                mouseCursor: mouseCursor,
                leading: leading,
                trailing: trailing,
              ),
          child: child,
        );
      },
    );
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxCardThemeData theme = WxCardTheme.of(context);
  /// ```
  static WxCardThemeData? maybeOf(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxCardTheme>();
    if (parentTheme != null) {
      return WxCardThemeData.from(parentTheme.data);
    }

    final globalTheme = Theme.of(context).extension<WxCardThemeData>();
    return globalTheme;
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxCardThemeData theme = WxCardTheme.of(context);
  /// ```
  static WxCardThemeData of(BuildContext context) {
    final parent = WxCardTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxCardThemeAdaptive(context);
  }
}
