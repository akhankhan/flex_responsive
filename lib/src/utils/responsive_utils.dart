import 'package:flutter/material.dart';

/// A utility class for handling responsive layouts in Flutter applications
class FlexResponsive {
  /// Private constructor to prevent instantiation
  const FlexResponsive._();

  /// Returns true if the current screen width indicates a mobile device
  ///
  /// Screen width must be less than 600px
  ///
  /// Example:
  /// ```dart
  /// if (FlexResponsive.isMobile(context)) {
  ///   return MobileLayout();
  /// }
  /// ```
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  /// Returns true if the current screen width indicates a tablet device
  ///
  /// Screen width must be between 600px and 1200px
  ///
  /// Example:
  /// ```dart
  /// if (FlexResponsive.isTablet(context)) {
  ///   return TabletLayout();
  /// }
  /// ```
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;

  /// Returns true if the current screen width indicates a desktop device
  ///
  /// Screen width must be greater than or equal to 1200px
  ///
  /// Example:
  /// ```dart
  /// if (FlexResponsive.isDesktop(context)) {
  ///   return DesktopLayout();
  /// }
  /// ```
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  /// Returns the number of columns to display based on screen size
  ///
  /// Returns:
  /// * 1 column for mobile
  /// * 2 columns for tablet
  /// * 4 columns for desktop
  ///
  /// Example:
  /// ```dart
  /// GridView.builder(
  ///   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  ///     crossAxisCount: FlexResponsive.cols(context),
  ///   ),
  /// )
  /// ```
  static int cols(BuildContext context) {
    if (isDesktop(context)) return 4;
    if (isTablet(context)) return 2;
    return 1;
  }
}
