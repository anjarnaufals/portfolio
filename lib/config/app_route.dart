import 'package:go_router/go_router.dart';

import 'package:portfolio/screen/main/main_screen.dart';
import 'package:portfolio/screen/section/about_screen.dart';
import 'package:portfolio/screen/section/home_screen.dart';

class AppRoute {
  static GoRouter get route => _router;

  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const MainScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'home',
            builder: (context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            path: 'about',
            builder: (context, GoRouterState state) {
              return const AboutScreen();
            },
          ),
        ],
      ),
    ],
  );
}
