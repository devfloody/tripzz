import 'package:hooks_riverpod/hooks_riverpod.dart';

final tabSelectProvider = StateProvider<int>((ref) {
  return 0;
});

final navbarIndexProvider = StateProvider<int>((ref) {
  return 0;
});

final favoriteProvider = StateProvider<bool>((ref) {
  return false;
});