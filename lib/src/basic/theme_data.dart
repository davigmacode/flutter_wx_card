import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxCardThemeData extends WxSheetThemeData<WxCardThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxCardThemeData({
    super.animated,
    super.curve,
    super.duration,
    WxCardStyle super.style = const WxCardStyle(),
    WxSheetStyleResolver<WxCardStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
    super.leading,
    super.trailing,
  });

  WxCardThemeData.from([
    super.other,
    super.fallback = const WxCardThemeData(),
  ]) : super.from();

  @override
  WxCardThemeData copyWith({
    animated,
    curve,
    duration,
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
    return WxCardThemeData.from(ancestor);
  }

  @override
  WxCardThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxCardThemeData.from(ancestor);
  }
}
