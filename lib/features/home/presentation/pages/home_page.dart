import 'package:flutter/material.dart';
import 'package:plug/core/presentation/widgets/custom_app_bar/custom_app_bar.dart';

/// {@template home_page}
/// A page to show welcome information.
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Plug'),
      ),
    );
  }
}
