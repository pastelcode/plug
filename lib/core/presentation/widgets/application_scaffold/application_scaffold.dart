import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:go_router/go_router.dart';
import 'package:plug/core/presentation/widgets/widgets.dart';
import 'package:plug/core/router/router.dart';

/// {@template application_scaffold}
/// An [Scaffold] containing a custom app bar and a bottom navigation bar.
/// {@endtemplate}
class ApplicationScaffold extends StatelessWidget {
  /// {@macro application_scaffold}
  const ApplicationScaffold({
    super.key,
    required this.body,
  });

  /// The widget that will be placed in the [Scaffold.body] property
  final Widget body;

  int _getSelectedRoute({
    required BuildContext context,
    required List<Map<String, Object>> destinations,
  }) {
    final location = GoRouter.of(context).location;
    final index = destinations.indexWhere(
      (
        Map<String, Object> element,
      ) {
        return (element['route']! as RouteData).path == location;
      },
    );
    return index;
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final destinations = <Map<String, Object>>[
      <String, Object>{
        'icon': const Icon(
          FlutterRemix.home_5_line,
        ),
        'selectedIcon': const Icon(
          FlutterRemix.home_5_fill,
        ),
        'label': 'Inicio',
        'route': Routes.home,
      },
      <String, Object>{
        'icon': const Icon(
          FlutterRemix.information_line,
        ),
        'selectedIcon': const Icon(
          FlutterRemix.information_fill,
        ),
        'label': 'Acerca de',
        'route': Routes.about,
      },
    ];

    _getSelectedRoute(
      context: context,
      destinations: destinations,
    );

    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'Plug',
        ),
      ),
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _getSelectedRoute(
          context: context,
          destinations: destinations,
        ),
        onDestinationSelected: (
          int index,
        ) {
          context.replaceNamed(
            (destinations[index]['route']! as RouteData).name,
          );
        },
        destinations: List.generate(
          destinations.length,
          (
            int index,
          ) {
            final destination = destinations[index];
            return NavigationDestination(
              selectedIcon: destination['selectedIcon']! as Widget,
              icon: destination['icon']! as Widget,
              label: destination['label']! as String,
            );
          },
        ),
      ),
    );
  }
}
