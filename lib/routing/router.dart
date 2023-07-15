import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/pages/home/screen/home_screen.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider.autoDispose((ref) => _router);

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
