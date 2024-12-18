import 'package:flutter/material.dart';
import '../utils/responsive_utils.dart';

/// A grid that automatically adjusts columns based on screen size
class FlexResponsiveGrid extends StatelessWidget {
  /// The items to display in the grid
  final List<Widget> children;

  /// The spacing between grid items
  final double spacing;

  /// Creates a responsive grid
  ///
  /// [children] is the list of widgets to display in the grid
  /// [spacing] is the space between items (defaults to 16)
  const FlexResponsiveGrid({
    super.key,
    required this.children,
    this.spacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(spacing),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: FlexResponsive.cols(context),
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
      ),
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
    );
  }
}
