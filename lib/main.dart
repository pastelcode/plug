import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

part 'bloc_providers.dart';
part 'ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
