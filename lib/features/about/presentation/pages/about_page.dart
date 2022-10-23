import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:plug/core/config/config.dart';
import 'package:plug/core/presentation/widgets/widgets.dart';
import 'package:plug/core/utils/utils.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // TODO(pastelcode): Add a hello animation.
          // Assets.animations.ghost.lottie(
          //   height: 125,
          // ),
          // const SizedBox(
          //   height: 40,
          // ),
          const Align(
            child: Text(
              'Hi!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              launchUri(
                uri: ApplicationInformation.ownerWebsite,
              );
            },
            child: Column(
              children: <Widget>[
                Text.rich(
                  TextSpan(
                    text: 'Developed by ',
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
                const SizedBox(
                  height: 20,
                ),
                ApplicationInformation.ownerLogo.svg(
                  height: 75,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Button(
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
          Button(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationIcon: const Icon(
                  FlutterRemix.shuffle_line,
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
        ],
      ),
    );
  }
}
