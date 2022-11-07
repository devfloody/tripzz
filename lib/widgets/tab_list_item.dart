import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    required this.textColor,
    required this.tabTitle,
    required this.onTap,
    required this.bgColor,
    required this.fw,
  }) : super(key: key);

  final String tabTitle;
  final VoidCallback onTap;
  final Color bgColor;
  final Color textColor;
  final FontWeight fw;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 33,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            tabTitle,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: fw,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
