import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/app_theme.dart';
import '../providers/provider.dart';
import 'tab_list_item.dart';

class TabList extends HookConsumerWidget {
  const TabList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(tabSelectProvider);

    List<String> tabTitle = [
      "All",
      "Popular",
      "Rating",
      "Most Searched",
      "Recommended",
    ];

    return SizedBox(
      height: 33,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: tabTitle.length,
        itemBuilder: (context, index) => TabItem(
          textColor: tabIndex == index ? Colors.white : kSecondaryText,
          tabTitle: tabTitle[index],
          onTap: () {
            ref.read(tabSelectProvider.notifier).state = index;
          },
          bgColor: tabIndex == index ? kMainBlue : Colors.transparent,
          fw: tabIndex == index ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
