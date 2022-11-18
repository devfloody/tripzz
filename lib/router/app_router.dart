import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tripzz/models/destination_model.dart';
import 'package:tripzz/router/app_routes.dart';

import '../views/views.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        name: "Home",
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Routes.destination,
        name: "Destination",
        builder: (context, state) => DestinationView(
          destination: state.extra as DestinationModel,
        ),
      ),
    ],
  );
});
