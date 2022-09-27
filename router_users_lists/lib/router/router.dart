import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/profile.dart';
import '../views/shopping_list.dart';

void main() {
  runApp(const MyRouter());
}

/// The main app.
class MyRouter extends StatelessWidget {
  MyRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'GoRouter Example',
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const ShoppingList();
        },
      ),
      GoRoute(
        path: '/b',
        builder: (BuildContext context, GoRouterState state) {
          return const Profile();
        },
      ),
    ],
  );
}
