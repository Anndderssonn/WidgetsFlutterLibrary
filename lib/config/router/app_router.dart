import 'package:go_router/go_router.dart';
import 'package:widgets_store/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UIControlsScreen.name,
      builder: (context, state) => const UIControlsScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    ),
    GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (context, state) => CounterScreen(),
    ),
    GoRoute(
      path: '/theme-picker',
      name: ThemePickerScreen.name,
      builder: (context, state) => ThemePickerScreen(),
    ),
  ],
);
