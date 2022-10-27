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
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      children: <Widget>[
        Text(
          'Bienvenido a Plug',
          style: Theme.of(
            context,
          ).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          '''
Plug es una aplicación guatemalteca para aprender LENSEGUA.''',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 100,
          child: Assets.animations.treeLoadingBar.rive(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          '''
En Pastel Code siempre nos ha fascinado cómo las personas nos podemos comunicar por medio de señas y nos parece súper atractivo que alguien lo domine. Es por eso que decidimos crear Plug para lograr aprender al enseñar y enseñar a aquellos que quieran aprender.

Si deseas contribuir al proyecto, siéntete libre de hacer tus PR al repositorio de Github que encontrarás más abajo.

Utilizamos Flutter para hacer un desarrollo impecable y rápido, GoRouter para el manejo de las rutas, Flutter Bloc para manejo del estado y Clean Architecture para no perdernos en el camino.

Para los modelos de las señas utilizamos Blender y el archivo principal lo encontrarás en el repositorio de Github de igual manera. Si deseas contribuir al crear animaciones o mejorar las existentes, siéntete en plena libertad de expresar tus talentos.''',
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
              ApplicationInformation.ownerLogo.svg(
                height: 75,
              ),
              const SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                  text: 'Desarrollado por ',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall,
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
              'Más información',
            ),
          ),
        ),
      ],
    );
  }
}
