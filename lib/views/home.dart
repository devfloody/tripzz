import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripzz/widgets/category_list.dart';

import '../config/app_theme.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/destination_list.dart';
import '../widgets/iconly_button.dart';
import '../widgets/tab_list.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  static String routeName = 'home';
  static String routeLocation = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconlyButton(
                  iconly: IconlyLight.category,
                  onTap: () {},
                ),
                SvgPicture.asset('assets/svg/logo.svg'),
                IconlyButton(
                  iconly: IconlyLight.bookmark,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Discover Natural\n",
                    style: kPoppinsLight.copyWith(fontSize: 34.sp, color: kSecondaryText),
                  ),
                  TextSpan(
                    text: "Beauty of the Earth.",
                    style: kPoppinsSemibold.copyWith(fontSize: 34.sp, color: kPrimaryText),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 62.h,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search "Dubai"',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.sp),
                  hintStyle: kPoppinsMedium.copyWith(fontSize: 16.sp, color: kSecondaryText),
                  fillColor: kBgItem,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.6),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    IconlyLight.search,
                    color: kSecondaryText,
                  ),
                  suffixIcon: const Icon(
                    IconlyLight.voice2,
                    color: kSecondaryText,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const TabList(),
            const SizedBox(height: 20),
            const DestinationList(),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20, color: kPrimaryText),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16, color: kSecondaryText),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const CategoryList(),
          ],
        ),
      ),
    );
  }
}
