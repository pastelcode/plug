import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plug/features/about/about.dart';

part 'routes.dart';

/// A mixin to encapsulate the application router.
mixin ApplicationRouter {
  /// The root router for this application.
  static GoRouter get router => GoRouter(
        routes: <GoRoute>[
          GoRoute(
            name: Routes.home.name,
            path: Routes.home.path,
            builder: (
              BuildContext context,
              GoRouterState state,
            ) {
              return const AboutPage();
            },
          ),
          GoRoute(
            name: Routes.about.name,
            path: Routes.about.path,
            builder: (
              BuildContext context,
              GoRouterState state,
            ) {
              return const AboutPage();
            },
          ),
        ],
      );
}
