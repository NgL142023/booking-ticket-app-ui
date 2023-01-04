import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';
import 'package:fmylife/util/app_styles.dart';
import 'package:fmylife/widgets/small_circle.dart';

class TicketInfo extends StatelessWidget {
  final bool? isColor;
  final Map<String, dynamic> ticket;
  const TicketInfo({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(5), vertical: AppLayout.getHeight(10)),
      height: AppLayout.getHeight(178),
      width: AppLayout.getScreenWidth() * 0.88,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(10),
                vertical: AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                color: isColor == null
                    ? const Color.fromARGB(255, 4, 59, 105)
                    : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(30)),
                    topRight: Radius.circular(AppLayout.getHeight(30)))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                    Expanded(child: Container()),
                    SmallCircle(
                      isColor: isColor,
                    ),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: 24,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                (constraints.constrainWidth() / 9).floor(),
                                (index) => Container(
                                      height: AppLayout.getHeight(1),
                                      width: AppLayout.getWidth(4),
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.blue),
                                    )),
                          );
                        }),
                      ),
                      Center(
                        child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.airplanemode_active,
                              color:
                                  isColor == null ? Colors.white : Colors.blue,
                            )),
                      )
                    ])),
                    SmallCircle(
                      isColor: isColor,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['time'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['name'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(10),
                )
              ],
            ),
          ),
          Container(
            height: AppLayout.getHeight(20),
            decoration: BoxDecoration(
              color: isColor == null ? Colors.red : Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: AppLayout.getWidth(10),
                  height: AppLayout.getHeight(16),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                ),
                SizedBox(
                  width: AppLayout.getWidth(10),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) => Flex(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: List.generate(
                        (constraints.constrainWidth() / 18).floor(),
                        (index) => Container(
                          height: AppLayout.getHeight(2),
                          width: AppLayout.getWidth(6),
                          decoration: BoxDecoration(
                              color:
                                  isColor == null ? Colors.white : Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getWidth(10),
                ),
                Container(
                  width: AppLayout.getWidth(10),
                  height: AppLayout.getHeight(16),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                ),
              ],
            ),
          ),
          Container(
            height: AppLayout.getHeight(70),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(10),
                vertical: AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                color: isColor == null ? Colors.red : Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ticket['date'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                    Text(
                      'Date',
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ticket['departure_time'],
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                    Text(
                      'Departure time',
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${ticket['number']}',
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    ),
                    Text(
                      'Number',
                      style: isColor == null
                          ? Styles.textStyle3
                          : Styles.textStyle2,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
