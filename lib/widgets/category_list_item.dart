import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tripzz/config/app_theme.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.margin,
    required this.image,
    required this.title,
  });

  final EdgeInsets margin;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 84.w,
          width: 84.w,
          padding: const EdgeInsets.all(20),
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.6),
            color: kBgItem,
          ),
          child: Image.asset(image),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: kPoppinsRegular.copyWith(color: kSecondaryText, fontSize: 14.sp),
        ),
      ],
    );
  }
}
