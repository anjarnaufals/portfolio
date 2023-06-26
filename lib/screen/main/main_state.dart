// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_cubit.dart';

@immutable
class MainState extends Equatable {
  const MainState({
    this.selectedSection = initialSection,
    this.themeMode = ThemeMode.light,
    this.dayColorScheme = lightColorScheme,
    this.nightColorScheme = darkColorScheme,
  });

  final Section selectedSection;
  final ThemeMode themeMode;
  final ColorScheme dayColorScheme;
  final ColorScheme nightColorScheme;

  @override
  List<Object?> get props => [
        selectedSection,
        themeMode,
        dayColorScheme,
        nightColorScheme,
      ];

  MainState copyWith({
    Section? selectedSection,
    ThemeMode? themeMode,
    ColorScheme? dayColorScheme,
    ColorScheme? nightColorScheme,
  }) {
    return MainState(
      selectedSection: selectedSection ?? this.selectedSection,
      themeMode: themeMode ?? this.themeMode,
      dayColorScheme: dayColorScheme ?? this.dayColorScheme,
      nightColorScheme: nightColorScheme ?? this.nightColorScheme,
    );
  }
}
