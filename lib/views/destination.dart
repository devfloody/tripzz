import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tripzz/config/app_theme.dart';
import 'package:tripzz/models/destination_model.dart';
import 'package:tripzz/providers/provider.dart';
import 'package:tripzz/widgets/detail_menu_list.dart';

class DestinationView extends HookConsumerWidget {
  const DestinationView({
    super.key,
    required this.destination,
  });

  final DestinationModel destination;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(favoriteProvider);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(28.33),
              child: Container(
                height: 492,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      destination.hero,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 16,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: 53,
                          width: 53,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 28.33,
                              sigmaY: 28.33,
                            ),
                            child: IconButton(
                              onPressed: () => context.pop(),
                              icon: const Icon(
                                IconlyLight.arrowLeft,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 16,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: 53,
                          width: 53,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 28.33,
                              sigmaY: 28.33,
                            ),
                            child: IconButton(
                              onPressed: () {
                                ref.read(favoriteProvider.notifier).state = !ref.read(favoriteProvider.notifier).state;
                              },
                              icon: Icon(
                                isFavorite ? IconlyBold.heart : IconlyLight.heart,
                                color: isFavorite ? kError : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(17),
                          topRight: Radius.circular(17),
                          bottomLeft: Radius.circular(25.4),
                          bottomRight: Radius.circular(25.4),
                        ),
                        child: Container(
                          height: 90,
                          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
                          width: double.infinity,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 28.33,
                              sigmaY: 28.33,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Location",
                                      style: kPoppinsRegular.copyWith(fontSize: 13.6, color: Colors.white),
                                    ),
                                    Text(
                                      "New York",
                                      style: kPoppinsSemibold.copyWith(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Flight Rest",
                                      style: kPoppinsRegular.copyWith(fontSize: 13.6, color: Colors.white),
                                    ),
                                    Text(
                                      "Chicago",
                                      style: kPoppinsSemibold.copyWith(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Destination",
                                      style: kPoppinsRegular.copyWith(fontSize: 13.6, color: Colors.white),
                                    ),
                                    Text(
                                      "Denveer",
                                      style: kPoppinsSemibold.copyWith(fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destination.name,
                            style: kPoppinsSemibold.copyWith(fontSize: 28.sp, color: kPrimaryText),
                          ),
                          Row(
                            children: [
                              const Icon(
                                IconlyLight.location,
                                size: 12,
                                color: kError,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                destination.location,
                                style: kPoppinsMedium.copyWith(fontSize: 12.sp, color: kError),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            IconlyBold.star,
                            color: kWarning,
                            size: 22.66,
                          ),
                          const SizedBox(width: 6),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "4.9/5",
                                style: kPoppinsRegular.copyWith(fontSize: 16, color: kWarning),
                              ),
                              Text(
                                "(17,500)",
                                style: kPoppinsSemibold.copyWith(fontSize: 10, color: kSecondaryText),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const DetailMenuList(),
                  const SizedBox(height: 14),
                  Text(
                    "Denver, the capital of Colorado, is an American metropolis dating to the Old West era. Larimer Square, the city’s oldest block, features landmark 19th-century buildings. Museums include the Denver Art Museum.",
                    style: kPoppinsRegular.copyWith(fontSize: 15.sp, color: kSecondaryText),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trip Price",
                  style: kPoppinsRegular.copyWith(fontSize: 14.sp, color: kSecondaryText),
                ),
                Text(
                  "\$1350",
                  style: kPoppinsBold.copyWith(fontSize: 28, color: kPrimaryText),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 14),
                backgroundColor: kMainBlue,
                foregroundColor: Colors.white,
                disabledBackgroundColor: kBgTab,
                disabledForegroundColor: kSecondaryText,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: Text(
                "Book Now",
                style: kPoppinsBold.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
