import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxCardTileThemeData extends WxSheetThemeData<WxCardTileThemeData> {
  /// Creates a theme data that can be used for [WxCardTileTheme].
  const WxCardTileThemeData({
    super.animated,
    super.curve,
    super.duration,
    super.variant,
    super.size,
    super.severity,
    WxCardTileStyle super.style = const WxCardTileStyle(),
    WxSheetStyleResolver<WxCardTileStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
    super.leading,
    super.trailing,
  });

  WxCardTileThemeData.from([
    super.other,
    super.fallback = const WxCardTileThemeData(),
  ]) : super.from();

  @override
  WxCardTileThemeData copyWith({
    animated,
    curve,
    duration,
    variant,
    size,
    severity,
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    inherits,
    mouseCursor,
    leading,
    trailing,
  }) {
    final ancestor = super.copyWith(
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
      inherits: inherits,
      mouseCursor: mouseCursor,
      leading: leading,
      trailing: trailing,
    );
    return WxCardTileThemeData.from(ancestor);
  }

  @override
  WxCardTileThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxCardTileThemeData.from(ancestor);
  }
}
