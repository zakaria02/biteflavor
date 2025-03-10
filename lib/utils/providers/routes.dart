import 'package:biteflavor/presentation/favorites/favorites_page.dart';
import 'package:biteflavor/presentation/home/home_page.dart';
import 'package:biteflavor/presentation/main_page.dart';
import 'package:biteflavor/presentation/notifications/notifications_page.dart';
import 'package:biteflavor/presentation/post/post_details_page.dart';
import 'package:biteflavor/presentation/search/search_page.dart';
import 'package:biteflavor/presentation/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/post/posts_list.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'homeNav');
final GlobalKey<NavigatorState> _searchNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'searchNav');
final GlobalKey<NavigatorState> _favoriteNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'favoriteNav');
final GlobalKey<NavigatorState> _settingsNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'settingsNav');

@TypedStatefulShellRoute<MainShellRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeShellBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomeRoute>(
          path: '/',
          routes: [
            TypedGoRoute<PostDetailsRoute>(
              path: '/postDetails/:postId',
            ),
            TypedGoRoute<PostsListRoute>(
              path: '/postsList/:title',
            ),
            TypedGoRoute<NotificationsRoute>(
              path: '/notifications',
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<SearchShellBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SearchRoute>(
          path: '/search',
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<FavoriteShellBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<FavoriteRoute>(
          path: "/favorite",
          routes: [],
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsShellBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<SettingsRoute>(
          path: '/account',
          routes: [],
        ),
      ],
    ),
  ],
)

// Main
class MainShellRoute extends StatefulShellRouteData {
  const MainShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainPage(navigationShell: navigationShell);
  }
}

// Home
class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = _homeNavigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: HomePage());
  }
}

// Search
class SearchShellBranch extends StatefulShellBranchData {
  const SearchShellBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = _searchNavigatorKey;
}

class SearchRoute extends GoRouteData {
  const SearchRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: SearchPage());
  }
}

// Favorite
class FavoriteShellBranch extends StatefulShellBranchData {
  const FavoriteShellBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = _favoriteNavigatorKey;
}

class FavoriteRoute extends GoRouteData {
  const FavoriteRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: FavoritesPage());
  }
}

// Settings
class SettingsShellBranch extends StatefulShellBranchData {
  const SettingsShellBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = _settingsNavigatorKey;
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: SettingsPage());
  }
}

// Post details
class PostDetailsRoute extends GoRouteData {
  const PostDetailsRoute({required this.postId});
  final int postId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: PostDetailsPage(postId: postId));
  }
}

// Posts list
class PostsListRoute extends GoRouteData {
  const PostsListRoute({
    required this.title,
    this.categoryId,
  });
  final int? categoryId;
  final String title;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: PostsListPage(
        categoryId: categoryId,
        title: title,
      ),
    );
  }
}

// Posts list
class NotificationsRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: NotificationsPage(),
    );
  }
}
