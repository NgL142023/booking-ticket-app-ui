import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';

class IconCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconCard({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(24),
      width: AppLayout.getScreenWidth() * 0.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 214, 214),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(7)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            width: AppLayout.getWidth(14),
          ),
          Text(text),
        ],
      ),
    );
  }
}
