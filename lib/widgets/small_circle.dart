import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';

class SmallCircle extends StatelessWidget {
  final bool? isColor;
  const SmallCircle({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(5)),
      decoration: BoxDecoration(
          border: Border.all(
              width: 2.5, color: isColor == null ? Colors.white : Colors.blue),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
    );
  }
}
