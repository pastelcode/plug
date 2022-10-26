import 'package:flutter/material.dart';
import 'package:plug/gen/assets.gen.dart';

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
        SizedBox(
          height: 300,
          child: Assets.animations.fire.rive(
            animations: <String>[
              'idle',
            ],
          ),
        ),
        Align(
          child: Text(
            'Próximamente',
            style: Theme.of(
              context,
            ).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
