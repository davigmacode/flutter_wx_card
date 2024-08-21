import 'package:flutter/material.dart';
import 'package:wx_card/wx_card.dart';
import 'wrapper.dart';

class SampleAppearance extends StatelessWidget {
  const SampleAppearance({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrapper(
      title: 'Appearance',
      source: 'sample_appearance.dart',
      child: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            WxCard(
              width: 100,
              height: 100,
              variant: WxCardVariant.tonal,
              alignment: Alignment.center,
              child: Text('Tonal'),
            ),
            WxCard(
              width: 100,
              height: 100,
              variant: WxCardVariant.elevated,
              alignment: Alignment.center,
              child: Text('Elevated'),
            ),
            WxCard(
              width: 100,
              height: 100,
              variant: WxCardVariant.filled,
              alignment: Alignment.center,
              child: Text('Filled'),
            ),
            WxCard(
              width: 100,
              height: 100,
              variant: WxCardVariant.outlined,
              alignment: Alignment.center,
              child: Text('Outlined'),
            ),
          ],
        ),
      ),
    );
  }
}
