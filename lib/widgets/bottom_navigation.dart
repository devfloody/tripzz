import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../config/app_theme.dart';
import '../providers/provider.dart';

class BottomNavigation extends HookConsumerWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navbarIndex = ref.watch(navbarIndexProvider);

    return SalomonBottomBar(
      currentIndex: navbarIndex,
      onTap: (index) {
        ref.read(navbarIndexProvider.notifier).state = index;
      },
      selectedItemColor: kMainBlue,
      unselectedItemColor: kSecondaryText,
      items: [
        SalomonBottomBarItem(
          icon: const Icon(IconlyBroken.home),
          activeIcon: const Icon(IconlyBold.home),
          title: const Text("Home"),
        ),
        SalomonBottomBarItem(
          icon: const Icon(IconlyBroken.search),
          activeIcon: const Icon(IconlyBold.search),
          title: const Text("Search"),
        ),
        SalomonBottomBarItem(
          icon: const Icon(IconlyBroken.timeCircle),
          activeIcon: const Icon(IconlyBold.timeCircle),
          title: const Text("History"),
        ),
        SalomonBottomBarItem(
          icon: const Icon(IconlyBroken.notification),
          activeIcon: const Icon(IconlyBold.notification),
          title: const Text("Notification"),
        ),
        SalomonBottomBarItem(
          icon: const Icon(IconlyBroken.profile),
          activeIcon: const Icon(IconlyBold.profile),
          title: const Text("Profile"),
        ),
      ],
    );
  }
}
