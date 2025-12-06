import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rickyandmorty/views/app_view.dart';
import 'package:rickyandmorty/views/screens/characters_view/characters_view.dart';
import 'package:rickyandmorty/views/screens/favourities_view/favourities_view.dart';
import 'package:rickyandmorty/views/screens/locations_view/locations_view.dart';
import 'package:rickyandmorty/views/screens/sections_view/sections_view.dart';

final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static const String characters = '/';
  static const String favourities = '/favourities';
  static const String locations = '/locations';
  static const String sections = '/sections';
}

final router = GoRouter(
            navigatorKey: _routerKey,
            initialLocation: AppRoutes.characters,

  routes: [
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              AppView(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes:  [GoRoute(
            path:AppRoutes.characters,
            builder:(context,state) => const CharactersView(),
          ),
          
          ],
        ),
        StatefulShellBranch(
          routes:  [GoRoute(
            path:AppRoutes.favourities,
            builder:(context,state) => const FavouritiesView(),
          ),
          
          ],
        ),
        StatefulShellBranch(
          routes:  [GoRoute(
            path:AppRoutes.locations,
            builder:(context,state) => const LocationsView(),
          ),
          
          ],
        ),
        StatefulShellBranch(
          routes:  [GoRoute(
            path:AppRoutes.sections,
            builder:(context,state) => const SectionsView(),
          ),
          
          ],
        ),
      ],
    ),
  ],
);
