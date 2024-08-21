import 'package:flutter/material.dart';
import 'package:wx_card/wx_card.dart';
import 'wrapper.dart';
import 'severity_colors.dart';

class SampleSeverity extends StatelessWidget {
  const SampleSeverity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrapper(
      title: 'Color Severity',
      source: 'sample_severity.dart',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Wrap(
            spacing: 10,
            children: [
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.tonal,
                severity: dangerColor,
                alignment: Alignment.center,
                child: Text('Tonal\nDanger'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.tonal,
                severity: warningColor,
                alignment: Alignment.center,
                child: Text('Tonal\nWarning'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.tonal,
                severity: successColor,
                alignment: Alignment.center,
                child: Text('Tonal\nSuccess'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.tonal,
                severity: infoColor,
                alignment: Alignment.center,
                child: Text('Tonal\nInfo'),
              ),
            ],
          ),
          SizedBox(height: 15),
          Wrap(
            spacing: 10,
            children: [
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.elevated,
                severity: dangerColor,
                alignment: Alignment.center,
                child: Text('Elevated\nDanger'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.elevated,
                severity: warningColor,
                alignment: Alignment.center,
                child: Text('Elevated\nWarning'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.elevated,
                severity: successColor,
                alignment: Alignment.center,
                child: Text('Elevated\nSuccess'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.elevated,
                severity: infoColor,
                alignment: Alignment.center,
                child: Text('Elevated\nInfo'),
              ),
            ],
          ),
          SizedBox(height: 15),
          Wrap(
            spacing: 10,
            children: [
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.filled,
                severity: dangerColor,
                alignment: Alignment.center,
                child: Text('Filled\nDanger'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.filled,
                severity: warningColor,
                alignment: Alignment.center,
                child: Text('Filled\nWarning'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.filled,
                severity: successColor,
                alignment: Alignment.center,
                child: Text('Filled\nSuccess'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.filled,
                severity: infoColor,
                alignment: Alignment.center,
                child: Text('Filled\nInfo'),
              ),
            ],
          ),
          SizedBox(height: 15),
          Wrap(
            spacing: 10,
            children: [
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.outlined,
                severity: dangerColor,
                alignment: Alignment.center,
                child: Text('Outlined\nDanger'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.outlined,
                severity: warningColor,
                alignment: Alignment.center,
                child: Text('Outlined\nWarning'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.outlined,
                severity: successColor,
                alignment: Alignment.center,
                child: Text('Outlined\nSuccess'),
              ),
              WxCard(
                width: 100,
                height: 100,
                variant: WxCardVariant.outlined,
                severity: infoColor,
                alignment: Alignment.center,
                child: Text('Outlined\nInfo'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
