import 'package:flutter/material.dart';
import 'package:fmylife/util/app_styles.dart';

class InfoCard extends StatelessWidget {
  final String text1, text2, text3, text4;
  const InfoCard(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: Styles.textStyle2,
            ),
            Text(
              text2,
              style: Styles.textStyle1,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text1,
              style: Styles.textStyle2,
            ),
            Text(
              text2,
              style: Styles.textStyle1,
            )
          ],
        )
      ],
    );
  }
}
