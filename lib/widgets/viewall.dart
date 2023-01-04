import 'package:flutter/material.dart';

import 'package:fmylife/util/app_styles.dart';

class ViewAll extends StatelessWidget {
  final String text1, text2;
  const ViewAll({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: Styles.headline1,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            text2,
            style: const TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
