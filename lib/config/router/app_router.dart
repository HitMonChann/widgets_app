// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progressIndicators',
      builder: (context, state) => const ProgressScreen(),
    )
  ],
);
