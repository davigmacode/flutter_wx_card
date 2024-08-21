import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style.dart';
import '../types.dart';

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
  WxSheetVariant? get variant => WxCardVariant.outlined;

  @override
  WxCardTileStyle get style => const WxCardTileStyle().merge(super.style);

  @override
  WxCardTileStyle baseStyle(data) {
    return const WxCardTileStyle(
      textAlign: TextAlign.left,
      tileWrap: false,
      spacing: 15,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
    );
  }
}

class WxCardTileThemeAdaptive extends WxCardTileThemePreset {
  WxCardTileThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  WxCardTileThemePreset get platformTheme {
    WxCardTileThemePreset theme = WxCardTileThemeM2(context);
    if (isAndroid && useMaterial3) {
      theme = WxCardTileThemeM3(context);
    } else if (isIOS) {
      theme = WxCardTileThemeIOS(context);
    }
    return theme;
  }

  @override
  get baseTheme => platformTheme.baseTheme;

  @override
  get effectiveStyle => platformTheme.effectiveStyle;

  @override
  get styleResolver => platformTheme.styleResolver;
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
