import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_color_schemes.dart';
import 'package:portfolio/global/global_var.dart';
import 'package:portfolio/model/section_model.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  void selectSection(Section e) {
    emit(state.copyWith(
      selectedSection: e,
    ));
  }

  void changeMode() {
    emit(state.copyWith(
      themeMode:
          state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
    ));
  }

  void changeColorSeeds(Color color) {
    emit(state.copyWith(
      dayColorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: color,
      ),
      nightColorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: color,
      ),
    ));
  }

  void onSectionChanged(int i) {
    emit(state.copyWith(
      selectedSection: sectionList[i],
    ));
  }
}
