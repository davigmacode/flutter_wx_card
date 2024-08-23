import 'package:flutter/material.dart';
import 'package:wx_card/wx_card.dart';
import 'package:wx_avatar/wx_avatar.dart';
import 'wrapper.dart';
import 'severity_colors.dart';
import 'image.dart';

class SampleHorizontal extends StatelessWidget {
  const SampleHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrapper(
      title: 'Horizontal Orientation',
      source: 'sample_horizontal.dart',
      child: Column(
        children: [
          WxCardTile(
            variant: WxCardVariant.outlined,
            severity: infoColor,
            leading: WxAvatar(
              clipBehavior: Clip.antiAlias,
              child: PlatformImage('https://i.pravatar.cc/50?u=6'),
            ),
            trailing: Icon(Icons.info),
            title: Text('Jane Doe'),
            subtitle: Text('jane.doe@widgetarian.com'),
          ),
        ],
      ),
    );
  }
}
