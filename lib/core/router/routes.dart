part of 'router.dart';

/// A class containing all routes for this application.
///
/// This class only contains static fields.
mixin Routes {
  /// The route for the 'home' section.
  static RouteData get home => const RouteData(
        name: 'Home',
        path: '/',
      );

  /// The route for the 'about' section.
  static RouteData get about => const RouteData(
        name: 'About',
        path: '/about',
      );
}

/// {@template route_data}
/// A class to build an application route with a name and a path.
/// {@endtemplate}
class RouteData extends Equatable {
  /// {@macro route_data}
  const RouteData({
    required this.name,
    required this.path,
  });

  /// The name for this route.
  final String name;

  /// The path for this route.
  final String path;

  @override
  List<Object?> get props => [
        name,
        path,
      ];
}
