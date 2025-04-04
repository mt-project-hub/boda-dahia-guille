import 'package:flutter/material.dart';

class FlexRow extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final double? spacing;
  final EdgeInsets? padding;

  const FlexRow({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.spacing,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Consider mobile if width is less than 600
        final isMobile = constraints.maxWidth < 600;

        if (isMobile) {
          return Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              mainAxisSize: mainAxisSize,
              children: _addSpacing(children, spacing),
            ),
          );
        }

        return Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            mainAxisSize: mainAxisSize,
            children: _addSpacing(children, spacing),
          ),
        );
      },
    );
  }

  List<Widget> _addSpacing(List<Widget> children, double? spacing) {
    if (spacing == null || children.isEmpty) return children;

    final List<Widget> spacedChildren = [];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i < children.length - 1) {
        spacedChildren.add(SizedBox(width: spacing, height: spacing));
      }
    }
    return spacedChildren;
  }
}
