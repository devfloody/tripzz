import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../views/views.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: HomeView.routeLocation,
        name: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: DestinationView.routeLocation,
        name: DestinationView.routeName,
        builder: (context, state) => DestinationView(
          destination: state.extra as Map<String, dynamic>,
        ),
      ),
    ],
  );
});
