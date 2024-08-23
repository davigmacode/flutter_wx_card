import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'style.dart';

/// A widget that represents a card with a variety of styling options.
///
/// This class extends the `WxSheet` class and provides additional features
/// specifically for creating cards. It inherits all the styling properties
/// from `WxSheet` and adds support for a header and footer widget.
class WxCard extends WxSheet<WxCardThemeData> {
  /// Creates a sheet widget representing a card.
  ///
  /// Inherits all the styling properties from `WxSheet`.
  ///
  /// Additionally provides the following properties for customization:
  ///
  /// * `header`: Widget to be displayed at the top of the card.
  /// * `footer`: Widget to be displayed at the bottom of the card.
  const WxCard({
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
    Widget? header,
    Widget? footer,
    super.child,
  }) : super(
          leading: header,
          trailing: footer,
        );

  @override
  get direction => Axis.vertical;

  @override
  WxCardStyle get effectiveStyle {
    return const WxCardStyle().merge(super.effectiveStyle);
  }

  @override
  WxCardThemeData getTheme(context) {
    return WxCardTheme.of(context);
  }

  @override
  WxCardStyle getInheritedStyle(context, inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxCardStyle().merge(parentStyle).merge(effectiveStyle);
    }
    return effectiveStyle;
  }
}
