import 'package:biteflavor/utils/providers/router.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:biteflavor/utils/widgets/bottom_bar_nav.dart';
import 'package:biteflavor/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isParent = ref
            .watch(routerProvider)
            .routerDelegate
            .currentConfiguration
            .routes
            .length ==
        2;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            if (isParent) const CustomAppBar(),
            Expanded(child: navigationShell),
          ],
        ),
      ),
      bottomNavigationBar: isParent
          ? BottomNavBar(
              navigationShell: navigationShell,
              onTap: (index) {
                switch (index) {
                  case 0:
                    const HomeRoute().go(context);
                    break;
                  case 1:
                    const SearchRoute().go(context);
                    break;
                  case 2:
                    const FavoriteRoute().go(context);
                    break;
                  case 3:
                    const SettingsRoute().go(context);
                    break;
                  default:
                    navigationShell.goBranch(
                      index,
                      initialLocation: index == navigationShell.currentIndex,
                    );
                }
              })
          : null,
    );
  }
}
