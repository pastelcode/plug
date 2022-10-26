import 'package:flutter/material.dart';

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
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      children: <Widget>[
        Text(
          'Bienvenido a Plug',
          style: Theme.of(
            context,
          ).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          '''
Plug es una aplicación para aprender LENSEGUA con el fin de hacer que más personas se sumen a est''',
        ),
      ],
    );
  }
}
