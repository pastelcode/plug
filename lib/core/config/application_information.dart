import 'package:plug/gen/assets.gen.dart';

/// A mixin that contains basic information about this application.
/// Like repository url, owner company, etc.
mixin ApplicationInformation {
  /// The owner's name.
  static String get ownerName => 'Pastel Code';

  /// The owner's logo.
  static SvgGenImage get ownerLogo => Assets.illustrations.pastelcode;

  /// The owner's website url.
  static Uri get ownerWebsite => Uri.https(
        'pastelcode.dev',
      );

  /// The remote repository of this app.
  static Uri get repository => Uri.https(
        'github.com',
        '/pastelcode/plug',
      );
}
