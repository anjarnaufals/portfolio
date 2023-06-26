import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme/app_theme.dart';

class SimpleSvg extends StatelessWidget {
  const SimpleSvg(this.asset, {super.key, this.height});

  final String asset;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      height: height ?? 20,
      colorFilter:
          ColorFilter.mode(AppTheme.tertiary(context), BlendMode.srcIn),
    );
  }
}
