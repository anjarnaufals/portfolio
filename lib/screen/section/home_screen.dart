import 'package:flutter/material.dart';
import 'package:portfolio/helper/helper.dart';
import 'package:portfolio/screen/section/reach_me_widget.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/string/string_text.dart';
import 'package:portfolio/theme/app_text_style.dart';
import 'package:portfolio/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: Helper.passBreakPointViewPort(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
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
            hello,
            style: AppStyle.headlineLarge(context).copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            anjar,
            style: AppStyle.headlineLarge(context).copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            homeDesc,
            style: AppStyle.bodyMedium(context).copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: .5,
            width: 120,
            color: AppTheme.secondary(context),
          ),
          const SizedBox(height: kToolbarHeight),
          Container(
            decoration: BoxDecoration(
              color: AppTheme.surfaceVariant(context).withOpacity(.5),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                Assets.orenoFotoCompressed,
                height: MediaQuery.of(context).size.height * .3,
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: FilledButton(
              onPressed: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (context) => const ReachMeWidget(),
                );
              },
              child: const Text("Reach me"),
            ),
          ),
          if (!Helper.passBreakPointViewPort(context))
            const SizedBox(height: kToolbarHeight),
        ],
      ),
    );
  }
}
