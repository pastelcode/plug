part of 'main.dart';

class _Ui extends StatelessWidget {
  const _Ui();

  @override
  Widget build(
    BuildContext context,
  ) {
    FlutterNativeSplash.remove();
    final applicationRouter = ApplicationRouter();

    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (
        BuildContext context,
        ThemeMode themeMode,
      ) {
        return MaterialApp.router(
          title: 'Plug',
          theme: ApplicationTheme.lightTheme,
          darkTheme: ApplicationTheme.darkTheme,
          themeMode: themeMode,
          scrollBehavior: const _ScrollBehaviorModified(),
          routerConfig: applicationRouter.router,
        );
      },
    );
  }
}

class _ScrollBehaviorModified extends ScrollBehavior {
  const _ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(
    _,
  ) {
    return const BouncingScrollPhysics(
      parent: AlwaysScrollableScrollPhysics(),
    );
  }
}
