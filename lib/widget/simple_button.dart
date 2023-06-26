import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme/app_theme.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.label,
    required this.ontap,
    this.color,
  });

  final String label;
  final VoidCallback ontap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 6,
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            label,
            height: 18,
            colorFilter: ColorFilter.mode(
              color ?? AppTheme.primary(context).withOpacity(.2),
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
