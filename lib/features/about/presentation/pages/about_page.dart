import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: Text('Hiii from about'),
    );
  }
}
