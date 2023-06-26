import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:portfolio/helper/helper.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/string/string_text.dart';
import 'package:portfolio/theme/app_text_style.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/widget/simple_svg.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: Helper.passBreakPointViewPort(context)
                ? kToolbarHeight - 20
                : kToolbarHeight + 20,
          ),
          Text(
            about,
            style: AppStyle.headlineLarge(context).copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            aboutMe,
            textAlign: Helper.passBreakPointViewPort(context)
                ? TextAlign.start
                : TextAlign.center,
            style: AppStyle.bodyMedium(context).copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: Helper.passBreakPointViewPort(context) ? 10 : 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: AspectRatio(
                aspectRatio: 14 / 5,
                child: Text(
                  aboutDesc,
                  style: AppStyle.bodyMedium(context).copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: Helper.passBreakPointViewPort(context)
                      ? TextAlign.start
                      : TextAlign.center,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Clipboard.setData(const ClipboardData(text: myPhone));

                  App.scaffoldKey.currentState?.showSnackBar(
                    SnackBar(
                      backgroundColor: AppTheme.primary(context),
                      content: const Text("Phone Number Copied"),
                    ),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    style: AppStyle.bodyMedium(context).copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    children: const [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(end: 10),
                          child: SimpleSvg(StringAsset.phoneIcon),
                        ),
                      ),
                      TextSpan(text: myPhone),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 6),
              InkWell(
                onTap: () {
                  Clipboard.setData(const ClipboardData(text: myEmail));

                  App.scaffoldKey.currentState?.showSnackBar(
                    SnackBar(
                      backgroundColor: AppTheme.primary(context),
                      content: const Text("Email Copied"),
                    ),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    style: AppStyle.bodyMedium(context).copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    children: const [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(end: 10),
                          child: SimpleSvg(StringAsset.emailIcon),
                        ),
                      ),
                      TextSpan(text: myEmail),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 6),
              RichText(
                text: TextSpan(
                  style: AppStyle.bodyMedium(context).copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                  children: const [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: 10),
                        child: SimpleSvg(StringAsset.locationIcon),
                      ),
                    ),
                    TextSpan(text: myLocation),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              RichText(
                text: TextSpan(
                  style: AppStyle.bodyMedium(context).copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                  children: const [
                    WidgetSpan(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: 10),
                        child: SimpleSvg(StringAsset.graduationIcon),
                      ),
                    ),
                    TextSpan(text: myDegree),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
