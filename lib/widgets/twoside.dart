import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';

class TwoSideCard extends StatelessWidget {
  final String text1, text2;
  const TwoSideCard({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12)),
      height: AppLayout.getHeight(40),
      width: AppLayout.getScreenWidth() * 0.93,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 191, 186, 186),
          borderRadius: BorderRadius.all(Radius.circular(22))),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: AppLayout.getHeight(30),
              width: AppLayout.getScreenWidth() * 0.42,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Center(child: Text(text1)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: AppLayout.getHeight(30),
              width: AppLayout.getScreenWidth() * 0.42,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.transparent,
              ),
              child: Center(child: Text(text2)),
            ),
          )
        ],
      ),
    );
  }
}
