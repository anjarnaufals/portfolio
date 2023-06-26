import 'package:flutter/material.dart';

abstract class AppTheme {
  AppTheme._();

  static Color primary(BuildContext context) =>
      Theme.of(context).colorScheme.primary;
  static Color secondary(BuildContext context) =>
      Theme.of(context).colorScheme.secondary;
  static Color tertiary(BuildContext context) =>
      Theme.of(context).colorScheme.tertiary;
  static Color error(BuildContext context) =>
      Theme.of(context).colorScheme.error;
  static Color background(BuildContext context) =>
      Theme.of(context).colorScheme.background;
  static Color outline(BuildContext context) =>
      Theme.of(context).colorScheme.outline;
  //
  static Color onPrimary(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;
  static Color onSecondary(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondary;
  static Color onTertiary(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiary;
  static Color onBackground(BuildContext context) =>
      Theme.of(context).colorScheme.onBackground;
  static Color onError(BuildContext context) =>
      Theme.of(context).colorScheme.onError;
  static Color onOutline(BuildContext context) =>
      Theme.of(context).colorScheme.outlineVariant;
  //
  static Color primaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.primaryContainer;
  static Color secondaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.secondaryContainer;
  static Color tertiaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.tertiaryContainer;
  static Color errorContainer(BuildContext context) =>
      Theme.of(context).colorScheme.errorContainer;
  static Color surface(BuildContext context) =>
      Theme.of(context).colorScheme.surface;
  static Color surfaceVariant(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceVariant;
  //
  static Color onPrimaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimaryContainer;
  static Color onSecondaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondaryContainer;
  static Color onTertiaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiaryContainer;
  static Color onErrorContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onErrorContainer;
  static Color onSurface(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;
  static Color onSurfaceVariant(BuildContext context) =>
      Theme.of(context).colorScheme.onSurfaceVariant;
  //
  static Color hint(BuildContext context) => Theme.of(context).hintColor;
}
