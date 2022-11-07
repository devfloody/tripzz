import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_theme.dart';

class DestinationItem extends StatelessWidget {
  const DestinationItem({
    super.key,
    required this.destinationImg,
    required this.destinationName,
    required this.destinationLocation,
    required this.margin,
    required this.onTap,
  });

  final String destinationImg;
  final String destinationName;
  final String destinationLocation;
  final EdgeInsets margin;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 250,
        width: 275,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.6),
          color: kBgItem,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(13.6),
              ),
              child: Image.asset(
                destinationImg,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destinationName,
                    style: kPoppinsSemibold.copyWith(fontSize: 18.sp, color: kPrimaryText),
                  ),
                  Row(
                    children: [
                      const Icon(
                        IconlyLight.location,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        destinationLocation,
                        style: kPoppinsMedium.copyWith(fontSize: 13.sp, color: kSecondaryText),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
