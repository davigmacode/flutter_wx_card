import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style.dart';

abstract class WxCardThemePreset extends WxCardThemeData
    with WxSheetThemePreset<WxCardThemeData> {
  @protected
  WxCardThemePreset(
    this.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;

  @override
  get style => WxCardStyle.from(super.style).copyWith(
        direction: Axis.vertical,
        textAlign: TextAlign.left,
        tileWrap: false,
        spacing: 15,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
      );
}

class WxCardThemeAdaptive extends WxCardThemePreset {
  WxCardThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticAdaptive(context);
}

class WxCardThemeM2 extends WxCardThemePreset {
  WxCardThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticM2(context);
}

class WxCardThemeM3 extends WxCardThemePreset {
  WxCardThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticM3(context);
}

class WxCardThemeIOS extends WxCardThemePreset {
  WxCardThemeIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticIOS(context);
}
