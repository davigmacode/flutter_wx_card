import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style.dart';
import '../types.dart';

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
  WxSheetVariant? get variant => WxCardVariant.outlined;

  @override
  WxCardStyle get style => const WxCardStyle().merge(super.style);

  @override
  WxCardStyle baseStyle(data) {
    return const WxCardStyle(
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

class WxCardThemeAdaptive extends WxCardThemePreset {
  WxCardThemeAdaptive(
    super.context, {
    super.animated,
    super.curve,
    super.duration,
  });

  WxCardThemePreset get platformTheme {
    WxCardThemePreset theme = WxCardThemeM2(context);
    if (isAndroid && useMaterial3) {
      theme = WxCardThemeM3(context);
    } else if (isIOS) {
      theme = WxCardThemeIOS(context);
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
