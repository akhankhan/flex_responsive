import 'package:flutter/material.dart';
import '../utils/responsive_utils.dart';

class FlexResponsiveGrid extends StatelessWidget {
  final List<Widget> children;
  final double spacing;

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
