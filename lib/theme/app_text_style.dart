import 'package:flutter/material.dart';

abstract class AppStyle {
  static String fontFamily = "RobotoMono";
  AppStyle._();

  static TextStyle bodySmall(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle bodyMedium(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle bodyLarge(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle labelSmall(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle labelMedium(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle labelLarge(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle titleSmall(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle titleMedium(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle titleLarge(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle headlineSmall(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle headlineMedium(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle headlineLarge(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle displaySmall(BuildContext context) =>
      Theme.of(context).textTheme.displaySmall!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle displayMedium(BuildContext context) =>
      Theme.of(context).textTheme.displayMedium!.copyWith(
            fontFamily: fontFamily,
          );

  static TextStyle displayLarge(BuildContext context) =>
      Theme.of(context).textTheme.displayLarge!.copyWith(
            fontFamily: fontFamily,
          );
}
