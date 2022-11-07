import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tripzz/widgets/detail_menu_list_item.dart';

import '../config/app_theme.dart';
import '../providers/provider.dart';

class DetailMenuList extends HookConsumerWidget {
  const DetailMenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(tabSelectProvider);

    List<String> tabTitle = [
      "Details",
      "Comments",
      "Reviews",
    ];

    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: tabTitle.length,
        itemBuilder: (context, index) => DetailMenuItem(
          padding:
              tabIndex == index ? const EdgeInsets.symmetric(horizontal: 15, vertical: 8) : const EdgeInsets.all(8),
          margin: index > 0 ? const EdgeInsets.only(left: 8) : EdgeInsets.zero,
          textColor: tabIndex == index ? kPrimaryText : kSecondaryText,
          tabTitle: tabTitle[index],
          onTap: () {
            ref.read(tabSelectProvider.notifier).state = index;
          },
          bgColor: tabIndex == index ? kBgTab : Colors.transparent,
          fw: tabIndex == index ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
