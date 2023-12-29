import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/global/global_var.dart';
import 'package:portfolio/helper/helper.dart';
import 'package:portfolio/model/latest_work.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/theme/app_text_style.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../model/latest_company.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({
    super.key,
  });

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen>
    with SingleTickerProviderStateMixin {
  //

  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<LatestCompany> _latestCompany =
      ValueNotifier(latestCompany[0]);

  final ValueNotifier<List<LatestWork>> _selectedListLatestWork =
      ValueNotifier(latestWorkRilo);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Helper.passBreakPointViewPort(context)
              ? Stack(
                  children: [
                    Positioned.fill(
                      child: ValueListenableBuilder(
                        valueListenable: _selectedListLatestWork,
                        builder: (_, selectedlatestWork, __) =>
                            PageView.builder(
                          pageSnapping: true,
                          controller: _pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: selectedlatestWork.length,
                          itemBuilder: (_, index) {
                            final work = selectedlatestWork[index];

                            return Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: _PortfolioItem(work: work),
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                          right: 60,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child: _DropDownSelectCompany(
                            latestCompany: _latestCompany,
                            selectedListLatestWork: _selectedListLatestWork,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    ScrollbarTheme(
                      data: ScrollbarThemeData(
                        crossAxisMargin: 2,
                        thickness: const MaterialStatePropertyAll(10),
                        radius: const Radius.circular(6),
                        thumbColor: MaterialStatePropertyAll(
                          AppTheme.tertiary(context).withOpacity(.5),
                        ),
                      ),
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: _scrollController,
                        scrollbarOrientation: ScrollbarOrientation.bottom,
                        child: ValueListenableBuilder(
                          valueListenable: _selectedListLatestWork,
                          builder: (_, selectedlatestWork, __) =>
                              GridView.builder(
                            controller: _scrollController,
                            padding: const EdgeInsets.only(
                              top: kToolbarHeight + 20,
                              bottom: kToolbarHeight,
                            ),
                            primary: false,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent:
                                  MediaQuery.of(context).size.height,
                              mainAxisExtent:
                                  MediaQuery.of(context).size.width * .4,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemCount: selectedlatestWork.length,
                            itemBuilder: (_, index) {
                              final work = selectedlatestWork[index];

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
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                          right: 60,
                        ),
                        child: SizedBox(
                          width: 300,
                          child: _DropDownSelectCompany(
                            latestCompany: _latestCompany,
                            selectedListLatestWork: _selectedListLatestWork,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        if (Helper.passBreakPointViewPort(context))
          ValueListenableBuilder(
            valueListenable: _selectedListLatestWork,
            builder: (_, selectedlatestWork, __) => Positioned(
              left: 30,
              top: 30,
              child: SmoothPageIndicator(
                count: selectedlatestWork.length,
                controller: _pageController,
                effect: WormEffect(
                  dotColor: AppTheme.primary(context).withOpacity(.4),
                  activeDotColor: AppTheme.primary(context),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

class _DropDownSelectCompany extends StatelessWidget {
  const _DropDownSelectCompany({
    required ValueNotifier<LatestCompany> latestCompany,
    required ValueNotifier<List<LatestWork>> selectedListLatestWork,
  })  : _latestCompany = latestCompany,
        _selectedListLatestWork = selectedListLatestWork;

  final ValueNotifier<LatestCompany> _latestCompany;
  final ValueNotifier<List<LatestWork>> _selectedListLatestWork;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _latestCompany,
      builder: (_, company, __) => DropdownButton<LatestCompany>(
        padding: const EdgeInsets.all(6),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        focusColor: AppTheme.primaryContainer(context),
        isExpanded: true,
        value: company,
        style: AppStyle.bodyLarge(context).copyWith(
          color: AppTheme.onPrimaryContainer(context),
        ),
        items: latestCompany
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Helper.passBreakPointViewPort(context)
                    ? FittedBox(
                        child: Text('${e.name}'),
                      )
                    : Text('${e.name}'),
              ),
            )
            .toList(),
        onChanged: (value) {
          _latestCompany.value = value!;
          _selectedListLatestWork.value =
              value == rilotechCompany ? latestWorkRilo : latestWorkInkare;
        },
      ),
    );
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
          work.company.name ?? '',
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
          work.periode,
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
            "#App Preview",
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
                Flexible(
                  child: Text(
                    "Check it out on Play Store ",
                    style: AppStyle.bodyMedium(context).copyWith(
                      color: AppTheme.tertiary(context),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SvgPicture.asset(
                  Assets.googlePlayIcon,
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
            child: Stack(
              children: [
                Positioned.fill(
                  child: PageView.builder(
                    controller: _previewController,
                    itemCount: widget.work.work.projectPreview.length,
                    itemBuilder: (_, index2) {
                      final workPreview =
                          widget.work.work.projectPreview[index2];

                      return Image.asset(workPreview);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 16,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _previewController.previousPage(
                          duration: Durations.short3,
                          curve: Curves.easeIn,
                        );
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 16,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _previewController.nextPage(
                          duration: Durations.short3,
                          curve: Curves.easeIn,
                        );
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
