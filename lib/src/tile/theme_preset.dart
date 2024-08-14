import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style.dart';

abstract class WxCardTileThemePreset extends WxCardTileThemeData
    with WxSheetThemePreset<WxCardTileThemeData> {
  @protected
  WxCardTileThemePreset(
    this.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  final BuildContext context;

  @override
  get style => WxCardTileStyle.from(super.style).copyWith(
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

class WxCardTileThemeAdaptive extends WxCardTileThemePreset {
  WxCardTileThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticAdaptive(context);
}

class WxCardTileThemeM2 extends WxCardTileThemePreset {
  WxCardTileThemeM2(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticM2(context);
}

class WxCardTileThemeM3 extends WxCardTileThemePreset {
  WxCardTileThemeM3(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticM3(context);
}

class WxCardTileThemeIOS extends WxCardTileThemePreset {
  WxCardTileThemeIOS(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  @override
  get baseTheme => WxSheetThemeStaticIOS(context);
}
