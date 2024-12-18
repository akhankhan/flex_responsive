import 'package:flutter/material.dart';
import '../utils/responsive_utils.dart';

class FlexResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

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
