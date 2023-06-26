import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio/global/global_var.dart';
import 'package:portfolio/helper/helper.dart';
import 'package:portfolio/model/section_model.dart';
import 'package:portfolio/screen/main/main_cubit.dart';
import 'package:portfolio/theme/app_text_style.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/widget/simple_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    this.arguments,
  });

  final dynamic arguments;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //
  final PageController _pageController = PageController();
  final ValueNotifier<bool> _showSideMenu = ValueNotifier(true);
  final ValueNotifier<bool> _showColorAppBar = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      _showColorAppBar.value = _pageController.offset.abs() > kToolbarHeight;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainCubit, MainState>(
      listener: (_, state) {
        null;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                onPageChanged: (page) {
                  context.read<MainCubit>().onSectionChanged(page);
                },
                pageSnapping: false,
                controller: _pageController,
                scrollDirection: Axis.vertical,
                itemCount: sectionList.length,
                itemBuilder: (_, i) => sectionList[i].section,
              ),
            ),
            Positioned(
              right: 0,
              bottom: kToolbarHeight,
              child: Helper.passBreakPointViewPort(context)
                  ? Column(
                      children: [
                        IconButton.filledTonal(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {
                            _showSideMenu.value = !_showSideMenu.value;
                          },
                          icon: ValueListenableBuilder(
                            valueListenable: _showSideMenu,
                            builder: (_, showSideMenu, __) => showSideMenu
                                ? const Icon(Icons.menu_open_rounded)
                                : const Icon(Icons.menu_rounded),
                          ),
                        ),
                        ValueListenableBuilder(
                          valueListenable: _showSideMenu,
                          builder: (_, showSideMenu, __) => showSideMenu
                              ? _SideMenu(pageController: _pageController)
                              : const SizedBox(),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: !Helper.passBreakPointViewPort(context)
                  ? _HeaderMenu(pageController: _pageController)
                  : const SizedBox(),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: BlocSelector<MainCubit, MainState, ThemeMode>(
                selector: (state) {
                  return state.themeMode;
                },
                builder: (_, themeMode) {
                  return IconButton(
                    onPressed: () {
                      context.read<MainCubit>().changeMode();
                    },
                    icon: Icon(themeMode == ThemeMode.light
                        ? Icons.dark_mode_rounded
                        : Icons.light_mode_rounded),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _showColorAppBar.dispose();
    _showSideMenu.dispose();
    _pageController.dispose();
    super.dispose();
  }
}

class _HeaderMenu extends StatelessWidget {
  const _HeaderMenu({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: BlocSelector<MainCubit, MainState, Section>(
        selector: (state) {
          return state.selectedSection;
        },
        builder: (_, section) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sectionList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: InkWell(
                        onTap: () {
                          context.read<MainCubit>().selectSection(e);
                          _pageController.jumpToPage(e.id);
                        },
                        radius: 6,
                        child: Text(
                          e.label,
                          style: AppStyle.bodyMedium(context).copyWith(
                            fontWeight: FontWeight.w500,
                            color: e.id == section.id
                                ? AppTheme.primary(context)
                                : AppTheme.primary(context).withOpacity(.7),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}

class _SideMenu extends StatelessWidget {
  const _SideMenu({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      color: AppTheme.primaryContainer(context).withOpacity(.2),
      child: BlocSelector<MainCubit, MainState, Section>(
        selector: (state) {
          return state.selectedSection;
        },
        builder: (_, section) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: sectionList
                .map((e) => SimpleButton(
                      color:
                          e.id == section.id ? AppTheme.primary(context) : null,
                      label: e.asset,
                      ontap: () async {
                        context.read<MainCubit>().selectSection(e);
                        _pageController.jumpToPage(
                          e.id,
                        );
                      },
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
