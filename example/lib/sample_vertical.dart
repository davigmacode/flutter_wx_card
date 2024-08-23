import 'package:flutter/material.dart';
import 'package:wx_card/wx_card.dart';
import 'package:wx_card/wx_tile.dart';
import 'package:wx_button/wx_button.dart';
import 'package:wx_avatar/wx_avatar.dart';
import 'wrapper.dart';
import 'severity_colors.dart';
import 'image.dart';

class SampleVertical extends StatelessWidget {
  const SampleVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: 'Vertical Orientation',
      source: 'sample_vertical.dart',
      child: Column(
        children: [
          WxCard(
            variant: WxCardVariant.tonal,
            severity: warningColor,
            width: 400,
            spacing: 0,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            header: WxListTile(
              leading: const WxAvatar.circle(
                backgroundColor: Colors.purple,
                child: Text('Wx'),
              ),
              trailing: WxIconButton(
                onPressed: () {},
                alignment: Alignment.center,
                radius: 15,
                iconSize: 20,
                padding: EdgeInsets.zero,
                child: const Icon(Icons.more_vert),
              ),
              title: const Text('Widgetarian'),
              subtitle: const Text('sponsored'),
            ),
            footer: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: WxIconButtonTheme.merge(
                style: const WxDrivenIconButtonStyle(radius: 20, iconSize: 20),
                child: Row(
                  children: [
                    Wrap(
                      spacing: 5,
                      children: [
                        WxIconButton(
                          onPressed: () {},
                          severity: dangerColor,
                          child: const Icon(Icons.favorite_outline),
                        ),
                        WxIconButton(
                          onPressed: () {},
                          severity: Colors.blue,
                          child: const Icon(Icons.chat_bubble_outline),
                        ),
                        WxIconButton(
                          onPressed: () {},
                          severity: Colors.green,
                          child: const Icon(Icons.send),
                        ),
                      ],
                    ),
                    const Spacer(),
                    WxIconButton(
                      onPressed: () {},
                      child: const Icon(Icons.bookmark_outline),
                    ),
                  ],
                ),
              ),
            ),
            child: const PlatformImage(
              'https://placehold.co/400x200.png',
              aspectRatio: 16.0 / 9.0,
            ),
          )
        ],
      ),
    );
  }
}
