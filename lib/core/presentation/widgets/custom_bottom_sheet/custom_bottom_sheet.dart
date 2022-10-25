import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plug/core/presentation/widgets/widgets.dart';
import 'package:plug/core/theme/theme.dart';

/// Shows a custom modal bottom sheet.
///
/// Consider using a [StatelessWidget] that returns a [SliverList] to pass
/// [child] to take advantage of Flutter's Hot Reload.
Future<T?> showCustomModalBottomSheet<T>({
  required BuildContext context,
  Widget? title,
  Widget? child,
  EdgeInsets padding = const EdgeInsets.symmetric(
    horizontal: 20,
  ),
}) async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  final result = await showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(
            context,
          ).size.height *
          0.9,
    ),
    builder: (
      BuildContext context,
    ) {
      return _CustomBottomSheet(
        title: title,
        padding: padding,
        child: child,
      );
    },
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  return result;
}

class _CustomBottomSheet extends StatelessWidget {
  const _CustomBottomSheet({
    this.title,
    this.child,
    required this.padding,
  });

  final Widget? title;
  final Widget? child;
  final EdgeInsets padding;

  @override
  Widget build(
    BuildContext context,
  ) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverAppBar(
          toolbarHeight: ApplicationTheme.appBarHeight,
          pinned: true,
          centerTitle: false,
          title: title != null
              ? Row(
                  children: <Widget>[
                    const CustomCloseButton(),
                    const SizedBox(
                      width: 20,
                    ),
                    DefaultTextStyle.merge(
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      child: title!,
                    ),
                  ],
                )
              : null,
          automaticallyImplyLeading: false,
        ),
        SliverPadding(
          padding: padding.add(
            EdgeInsets.only(
              bottom: MediaQuery.of(
                context,
              ).padding.bottom,
            ),
          ),
          sliver: child,
        ),
      ],
    );
  }
}
