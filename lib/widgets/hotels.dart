import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';
import 'package:fmylife/util/app_styles.dart';

class Hotels extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotels({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(10)),
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: AppLayout.getHeight(320),
      width: AppLayout.getScreenWidth() * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: AppLayout.getHeight(190),
              width: AppLayout.getScreenWidth() * 0.42,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: AppLayout.getHeight(2.5),
                      color: const Color.fromARGB(255, 4, 76, 135)),
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(20))),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/${hotel['pic']}'))),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(12),
          ),
          Text(
            hotel['space'],
            style: Styles.textStyle2
                .copyWith(color: const Color.fromARGB(255, 224, 74, 19)),
          ),
          SizedBox(
            height: AppLayout.getHeight(12),
          ),
          Text(
            hotel['location'],
            style: Styles.textStyle2
                .copyWith(color: const Color.fromARGB(255, 224, 74, 19)),
          ),
          SizedBox(
            height: AppLayout.getHeight(12),
          ),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.textStyle2
                .copyWith(color: const Color.fromARGB(255, 224, 74, 19)),
          )
        ],
      ),
    );
  }
}
