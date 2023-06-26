import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:portfolio/global/global_var.dart';
import 'package:portfolio/helper/helper.dart';
import 'package:portfolio/model/latest_work.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/theme/app_text_style.dart';
import 'package:portfolio/theme/app_theme.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({
    super.key,
  });

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ValueNotifier<LatestWork> _latestWork = ValueNotifier(latestWork[0]);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Helper.passBreakPointViewPort(context)
              ? PageView.builder(
                  pageSnapping: true,
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (i) {
                    _latestWork.value = latestWork[i];
                  },
                  itemCount: latestWork.length,
                  itemBuilder: (_, index) {
                    final work = latestWork[index];

                    return Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: _PortfolioItem(work: work),
                    );
                  },
                )
              : GridView.builder(
                  padding: const EdgeInsets.only(
                    top: kToolbarHeight + 20,
                    bottom: kToolbarHeight,
                  ),
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: MediaQuery.of(context).size.height,
                    mainAxisExtent: MediaQuery.of(context).size.width * .4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: latestWork.length,
                  itemBuilder: (_, index) {
                    final work = latestWork[index];

                    return Container(
                      padding: const EdgeInsets.all(30.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: AppTheme.tertiary(context),
                            width: .5,
                          ),
                        ),
                      ),
                      child: _PortfolioItem(work: work),
                    );
                  },
                ),
        ),
        if (Helper.passBreakPointViewPort(context))
          Positioned(
            left: 30,
            top: 30,
            child: SmoothPageIndicator(
              count: latestWork.length,
              controller: _pageController,
              effect: WormEffect(
                dotColor: AppTheme.primary(context).withOpacity(.4),
                activeDotColor: AppTheme.primary(context),
              ),
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _latestWork.dispose();
    _pageController.dispose();
    super.dispose();
  }
}

class _PortfolioItem extends StatelessWidget {
  const _PortfolioItem({
    Key? key,
    required this.work,
  }) : super(key: key);

  final LatestWork work;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (Helper.passBreakPointViewPort(context))
          const SizedBox(height: kToolbarHeight - 20),
        Text(
          work.company,
          style: AppStyle.bodyLarge(context).copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          height: .5,
          width: 50,
          color: AppTheme.secondary(context),
        ),
        const SizedBox(height: 6),
        Text(
          "Agustus 2022 - present",
          style: AppStyle.bodySmall(context).copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 16),
        Text("Project : ${work.work.projectName}"),
        const SizedBox(height: 8),
        Text(
          "#Responsibility in project",
          style: AppStyle.bodySmall(context)
              .copyWith(color: AppTheme.onPrimaryContainer(context)),
        ),
        const SizedBox(height: 6),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.surfaceVariant(context).withOpacity(.5),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: work.work.descriptionRole.length,
              itemBuilder: (_, i) {
                final desc = work.work.descriptionRole[i];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "• ",
                        style: AppStyle.bodyMedium(context).copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          desc,
                          style: AppStyle.bodyMedium(context).copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (_) => _PreviewWorkWidget(work: work),
            );
          },
          child: Text(
            "#View project preview",
            style: AppStyle.bodyMedium(context).copyWith(
              color: AppTheme.secondary(context),
            ),
          ),
        ),
        if (work.storeUrl != null && work.storeUrl!.isNotEmpty)
          TextButton(
            onPressed: () {
              launchUrlString("${work.storeUrl}");
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Check it out on Play Store ",
                  style: AppStyle.bodyMedium(context)
                      .copyWith(color: AppTheme.tertiary(context)),
                ),
                SvgPicture.asset(
                  StringAsset.googlePlayIcon,
                  height: 18,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _PreviewWorkWidget extends StatefulWidget {
  const _PreviewWorkWidget({
    Key? key,
    required this.work,
  }) : super(key: key);

  final LatestWork work;

  @override
  State<_PreviewWorkWidget> createState() => _PreviewWorkWidgetState();
}

class _PreviewWorkWidgetState extends State<_PreviewWorkWidget> {
  final PageController _previewController = PageController();
  @override
  void dispose() {
    _previewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 30),
          SmoothPageIndicator(
            controller: _previewController,
            count: widget.work.work.projectPreview.length,
            effect: WormEffect(
              dotColor: AppTheme.primary(context).withOpacity(.4),
              activeDotColor: AppTheme.primary(context),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: PageView.builder(
              controller: _previewController,
              itemCount: widget.work.work.projectPreview.length,
              itemBuilder: (_, index2) {
                final workPreview = widget.work.work.projectPreview[index2];

                return Image.asset(workPreview);
              },
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
