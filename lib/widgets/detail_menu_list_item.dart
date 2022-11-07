import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailMenuItem extends StatelessWidget {
  const DetailMenuItem({
    Key? key,
    required this.textColor,
    required this.tabTitle,
    required this.onTap,
    required this.bgColor,
    required this.fw,
    required this.padding,
    required this.margin,
  }) : super(key: key);

  final String tabTitle;
  final VoidCallback onTap;
  final Color bgColor;
  final Color textColor;
  final FontWeight fw;
  final EdgeInsets padding;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // height: 33,
        margin: margin,
        padding: padding,
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
