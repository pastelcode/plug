import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:plug/core/config/config.dart';
import 'package:plug/core/presentation/widgets/widgets.dart';
import 'package:plug/core/theme/theme.dart';
import 'package:plug/core/utils/utils.dart';
import 'package:plug/gen/assets.gen.dart';

/// {@template about_page}
/// A page to show all application related information.
/// Like licenses, version, Github repository, etc.
/// {@endtemplate}
class AboutPage extends StatelessWidget {
  /// {@macro about_page}
  const AboutPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'About',
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          Align(
            child: Text(
              'Hi!',
              style: Theme.of(
                context,
              ).textTheme.headline1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Assets.animations.treeLoadingBar.rive(),
          ),
          const SizedBox(
            height: 75,
          ),
          GestureDetector(
            onTap: () {
              launchUri(
                uri: ApplicationInformation.ownerWebsite,
              );
            },
            child: Column(
              children: <Widget>[
                ApplicationInformation.ownerLogo.svg(
                  height: 75,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Developed by ',
                    style: Theme.of(
                      context,
                    ).textTheme.caption,
                    children: <InlineSpan>[
                      TextSpan(
                        text: ApplicationInformation.ownerName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // These buttons are wrapped in an `Align` widgets to avoid their
          // widths go from edge to edge.
          Align(
            child: Button(
              onPressed: () {
                launchUri(
                  uri: ApplicationInformation.repository,
                );
              },
              tooltip: 'Open Github repository',
              icon: const Icon(
                FlutterRemix.github_line,
              ),
              title: const Text(
                'Github',
              ),
            ),
          ),
          Align(
            child: Button(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        ApplicationTheme.borderRadius,
                      ),
                    ),
                    child: Assets.images.logo.image(
                      height: 75,
                    ),
                  ),
                  applicationName: 'Plug',
                  applicationVersion: '0.1.0',
                );
              },
              icon: const Icon(
                FlutterRemix.information_line,
              ),
              title: const Text(
                'More info',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
