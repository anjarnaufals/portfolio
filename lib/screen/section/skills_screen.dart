import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio/helper/helper.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/string/string_text.dart';
import 'package:portfolio/theme/app_text_style.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: Helper.passBreakPointViewPort(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Helper.passBreakPointViewPort(context)
                ? kToolbarHeight - 20
                : kToolbarHeight + 20,
          ),
          Text(
            skill,
            style: AppStyle.headlineLarge(context).copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: kToolbarHeight),
          Expanded(
            child: Wrap(
              runSpacing: 30,
              spacing: Helper.passBreakPointViewPort(context)
                  ? 30
                  : MediaQuery.of(context).size.width * .15,
              children: const [
                _SkillWidget(
                  label: 'Flutter',
                  asset: StringAsset.flutterIcon,
                  desc: '',
                ),
                _SkillWidget(
                  label: 'Visual Studio Code',
                  isSvg: false,
                  asset: StringAsset.vsCodeIconPng,
                  desc: '',
                ),
                _SkillWidget(
                  label: 'Git',
                  asset: StringAsset.gitIcon,
                  desc: '',
                ),
                _SkillWidget(
                  label: 'Insomnia',
                  asset: StringAsset.insomniaIcon,
                  desc: '',
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Other skills", style: AppStyle.titleSmall(context)),
              const SizedBox(height: 6),
              Text("• PHP", style: AppStyle.bodySmall(context)),
              const SizedBox(height: 2),
              Text("• MYSQL", style: AppStyle.bodySmall(context)),
              const SizedBox(height: 2),
              Text("• HTML", style: AppStyle.bodySmall(context)),
            ],
          ),
        ],
      ),
    );
  }
}

class _SkillWidget extends StatelessWidget {
  const _SkillWidget({
    Key? key,
    required this.asset,
    required this.label,
    required this.desc,
    this.isSvg = true,
  }) : super(key: key);

  final String asset;
  final String label;
  final String desc;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isSvg
            ? SvgPicture.asset(
                asset,
                height: 30,
              )
            : Image.asset(
                asset,
                height: 30,
              ),
        const SizedBox(height: 10),
        Text(
          label,
          style: AppStyle.bodyMedium(context).copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          desc,
          style: AppStyle.bodySmall(context),
        ),
      ],
    );
  }
}
