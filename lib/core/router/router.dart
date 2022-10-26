import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plug/core/presentation/widgets/widgets.dart';
import 'package:plug/features/about/about.dart';
import 'package:plug/features/home/home.dart';

part 'routes.dart';

/// {@template application_router}
/// The application router.
/// {@endtemplate}
class ApplicationRouter {
  /// {@macro application_router}
  factory ApplicationRouter() {
    if (_singleton != null) {
      return _singleton!;
    }
    _singleton = ApplicationRouter._internal();
    return _singleton!;
  }

  ApplicationRouter._internal();

  static ApplicationRouter? _singleton;

  /// The root router for this application.
  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Routes.home.path,
    routes: <RouteBase>[
      ShellRoute(
        builder: (
          BuildContext context,
          GoRouterState state,
          Widget child,
        ) {
          return ApplicationScaffold(
            body: child,
          );
        },
        // In the following routes, `pageBuilder` is being used instead of
        // `builder` to avoid default Material transitions between pages.
        routes: <RouteBase>[
          GoRoute(
            name: Routes.home.name,
            path: Routes.home.path,
            pageBuilder: (
              BuildContext context,
              GoRouterState state,
            ) {
              return const MaterialPage(
                child: HomePage(),
              );
            },
          ),
          GoRoute(
            name: Routes.about.name,
            path: Routes.about.path,
            pageBuilder: (
              BuildContext context,
              GoRouterState state,
            ) {
              return const MaterialPage(
                child: AboutPage(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
