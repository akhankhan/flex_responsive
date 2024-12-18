import 'package:flutter/material.dart';
import '../utils/responsive_utils.dart';

/// A widget that shows different layouts based on screen size
class FlexResponsiveLayout extends StatelessWidget {
  /// The layout to show on mobile devices
  final Widget mobile;

  /// The layout to show on tablet devices (optional)
  final Widget? tablet;

  /// The layout to show on desktop devices (optional)
  final Widget? desktop;

  /// Creates a responsive layout widget
  ///
  /// [mobile] is required and will be used as fallback for larger screens
  /// if [tablet] or [desktop] are not provided
  const FlexResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (FlexResponsive.isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    }
    if (FlexResponsive.isTablet(context)) {
      return tablet ?? mobile;
    }
    return mobile;
  }
}
