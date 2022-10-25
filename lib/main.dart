import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:plug/core/router/router.dart';
import 'package:plug/core/theme/theme.dart';
import 'package:plug/features/about/presentation/bloc/bloc/theme_bloc.dart';

part 'bloc_providers.dart';
part 'ui.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );

  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString(
        'assets/fonts/Inter/OFL.txt',
      );
      yield LicenseEntryWithLineBreaks(
        [
          'Inter',
        ],
        license,
      );
    },
  );

  // |- Set up Hydrated Bloc
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  // Set up Hydrated Bloc -|

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  HydratedBlocOverrides.runZoned(
    () {
      runApp(
        const _BlocProviders(
          child: _Ui(),
        ),
      );
    },
    storage: storage,
  );
}
