/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/fire.riv
  RiveGenImage get fire => const RiveGenImage('assets/animations/fire.riv');

  /// File path: assets/animations/tree_loading_bar.riv
  RiveGenImage get treeLoadingBar =>
      const RiveGenImage('assets/animations/tree_loading_bar.riv');

  /// List of all assets
  List<RiveGenImage> get values => [fire, treeLoadingBar];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  $AssetsFontsInterGen get inter => const $AssetsFontsInterGen();
}

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  /// File path: assets/illustrations/computer.svg
  SvgGenImage get computer =>
      const SvgGenImage('assets/illustrations/computer.svg');

  /// File path: assets/illustrations/moon.svg
  SvgGenImage get moon => const SvgGenImage('assets/illustrations/moon.svg');

  /// File path: assets/illustrations/pastelcode.svg
  SvgGenImage get pastelcode =>
      const SvgGenImage('assets/illustrations/pastelcode.svg');

  /// File path: assets/illustrations/sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/illustrations/sun.svg');

  /// List of all assets
  List<SvgGenImage> get values => [computer, moon, pastelcode, sun];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_background.png
  AssetGenImage get logoBackground =>
      const AssetGenImage('assets/images/logo_background.png');

  /// File path: assets/images/logo_foreground.png
  AssetGenImage get logoForeground =>
      const AssetGenImage('assets/images/logo_foreground.png');

  /// File path: assets/images/logo_foreground_small.png
  AssetGenImage get logoForegroundSmall =>
      const AssetGenImage('assets/images/logo_foreground_small.png');

  /// File path: assets/images/logo_foreground_white.png
  AssetGenImage get logoForegroundWhite =>
      const AssetGenImage('assets/images/logo_foreground_white.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        logo,
        logoBackground,
        logoForeground,
        logoForegroundSmall,
        logoForegroundWhite
      ];
}

class $AssetsFontsInterGen {
  const $AssetsFontsInterGen();

  /// File path: assets/fonts/Inter/Inter-Black.ttf
  String get interBlack => 'assets/fonts/Inter/Inter-Black.ttf';

  /// File path: assets/fonts/Inter/Inter-Bold.ttf
  String get interBold => 'assets/fonts/Inter/Inter-Bold.ttf';

  /// File path: assets/fonts/Inter/Inter-ExtraBold.ttf
  String get interExtraBold => 'assets/fonts/Inter/Inter-ExtraBold.ttf';

  /// File path: assets/fonts/Inter/Inter-ExtraLight.ttf
  String get interExtraLight => 'assets/fonts/Inter/Inter-ExtraLight.ttf';

  /// File path: assets/fonts/Inter/Inter-Light.ttf
  String get interLight => 'assets/fonts/Inter/Inter-Light.ttf';

  /// File path: assets/fonts/Inter/Inter-Medium.ttf
  String get interMedium => 'assets/fonts/Inter/Inter-Medium.ttf';

  /// File path: assets/fonts/Inter/Inter-Regular.ttf
  String get interRegular => 'assets/fonts/Inter/Inter-Regular.ttf';

  /// File path: assets/fonts/Inter/Inter-SemiBold.ttf
  String get interSemiBold => 'assets/fonts/Inter/Inter-SemiBold.ttf';

  /// File path: assets/fonts/Inter/Inter-Thin.ttf
  String get interThin => 'assets/fonts/Inter/Inter-Thin.ttf';

  /// File path: assets/fonts/Inter/OFL.txt
  String get ofl => 'assets/fonts/Inter/OFL.txt';

  /// File path: assets/fonts/Inter/README.txt
  String get readme => 'assets/fonts/Inter/README.txt';

  /// List of all assets
  List<String> get values => [
        interBlack,
        interBold,
        interExtraBold,
        interExtraLight,
        interLight,
        interMedium,
        interRegular,
        interSemiBold,
        interThin,
        ofl,
        readme
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIllustrationsGen illustrations =
      $AssetsIllustrationsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}

class RiveGenImage {
  const RiveGenImage(this._assetName);

  final String _assetName;

  RiveAnimation rive({
    String? artboard,
    List<String> animations = const [],
    List<String> stateMachines = const [],
    BoxFit? fit,
    Alignment? alignment,
    Widget? placeHolder,
    bool antialiasing = true,
    List<RiveAnimationController> controllers = const [],
    OnInitCallback? onInit,
  }) {
    return RiveAnimation.asset(
      _assetName,
      artboard: artboard,
      animations: animations,
      stateMachines: stateMachines,
      fit: fit,
      alignment: alignment,
      placeHolder: placeHolder,
      antialiasing: antialiasing,
      controllers: controllers,
      onInit: onInit,
    );
  }

  String get path => _assetName;
}
