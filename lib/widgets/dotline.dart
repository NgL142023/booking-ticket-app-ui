import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';

class DotLine extends StatelessWidget {
  const DotLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / 15).floor(),
            (index) => Container(
              width: AppLayout.getWidth(7),
              height: AppLayout.getHeight(1),
              decoration: const BoxDecoration(color: Colors.grey),
            ),
          ),
        );
      },
    );
  }
}
