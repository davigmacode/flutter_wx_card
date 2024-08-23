import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'style.dart';

/// A widget that represents a tile within a card with a horizontal layout.
///
/// This class extends the `WxSheet` class and provides a structure for
/// creating tiles within cards. It inherits all the styling properties from
/// `WxSheet` and adds specific properties for leading, trailing widgets,
/// title, and subtitle
class WxCardTile extends WxSheet<WxCardTileThemeData> {
  /// Creates a sheet widget with card tile specific styles.
  ///
  /// You can customize the tile's appearance using the various properties
  /// inherited from `WxSheet` and the `WxCardTileThemeData` theme.
  const WxCardTile({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.variant,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.offset,
    super.scale,
    super.rotate,
    super.flipX,
    super.flipY,
    super.opacity,
    super.alignment,
    super.clipBehavior,
    super.overlay,
    super.overlayColor,
    super.overlayOpacity,
    super.elevationColor,
    super.elevation,
    super.tileAlign,
    super.tileJustify,
    super.tileWrap,
    super.textStyle,
    super.textAlign,
    super.textSpacing,
    super.textColor,
    super.textOverflow,
    super.textSoftWrap,
    super.textWidthBasis,
    super.adaptiveForegroundColor,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.checkmarkColor,
    super.checkmarkSize,
    super.checkmarkWeight,
    super.checkmarkRounded,
    super.spinnerColor,
    super.spinnerBackgroundColor,
    super.spinnerSize,
    super.spinnerWidth,
    super.spinnerRounded,
    super.style,
    super.tooltip,
    super.disabled,
    super.leading,
    super.trailing,
    super.title,
    super.subtitle,
    super.child,
  });

  @override
  get direction => Axis.horizontal;

  @override
  WxCardTileStyle get effectiveStyle {
    return const WxCardTileStyle().merge(super.effectiveStyle);
  }

  @override
  WxCardTileThemeData getTheme(context) {
    return WxCardTileTheme.of(context);
  }

  @override
  WxCardTileStyle getInheritedStyle(context, inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxCardTileStyle().merge(parentStyle).merge(effectiveStyle);
    }
    return effectiveStyle;
  }
}
