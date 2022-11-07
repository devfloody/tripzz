import 'package:flutter/material.dart';

class IconlyButton extends StatelessWidget {
  const IconlyButton({
    Key? key,
    required this.onTap,
    required this.iconly,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData iconly;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(.2),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          iconly,
          size: 28,
        ),
      ),
    );
  }
}
