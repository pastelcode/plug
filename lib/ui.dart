part of 'main.dart';

class _Ui extends StatelessWidget {
  const _Ui();

  @override
  Widget build(
    BuildContext context,
  ) {
    return const MaterialApp(
      title: 'Plug',
      scrollBehavior: _ScrollBehaviorModified(),
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
