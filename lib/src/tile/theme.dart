import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxCardTileTheme extends WxSheetTheme<WxCardTileThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxCardTile]s should look like.
  const WxCardTileTheme({
    super.key,
    required WxCardTileThemeData super.data,
    required super.child,
  });

  /// Creates an [WxCardTileTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxCardTileTheme], if any.
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
    WxCardTileStyle? style,
    WxSheetStyleResolver<WxCardTileStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    Widget? leading,
    Widget? trailing,
    WxCardTileThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxCardTileTheme.of(context);
        return WxCardTileTheme(
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
  /// WxCardTileData theme = WxCardTileTheme.of(context);
  /// ```
  static WxCardTileThemeData? maybeOf(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxCardTileTheme>();
    if (parentTheme != null) {
      return WxCardTileThemeData.from(parentTheme.data);
    }

    final globalTheme = Theme.of(context).extension<WxCardTileThemeData>();
    return globalTheme;
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxCardTileData theme = WxCardTileTheme.of(context);
  /// ```
  static WxCardTileThemeData of(BuildContext context) {
    final parent = WxCardTileTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxCardTileThemeAdaptive(context);
  }
}
