import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDevider;
  final double width;
  final bool? isColor;
  const AppLayoutBuilderWidget({
    super.key,
    required this.randomDevider,
    this.width = 3,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("${(constraints.constrainWidth() / randomDevider).floor()}");
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDevider).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey.shade200,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
