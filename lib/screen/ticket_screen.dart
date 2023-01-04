import 'package:flutter/material.dart';

import 'package:fmylife/util/app_info.dart';
import 'package:fmylife/util/app_layout.dart';
import 'package:fmylife/util/app_styles.dart';
import 'package:fmylife/widgets/dotline.dart';
import 'package:fmylife/widgets/info_card.dart';
import 'package:fmylife/widgets/ticket_info.dart';
import 'package:fmylife/widgets/twoside.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 214, 214),
      body: Container(
        padding: const EdgeInsets.fromLTRB(1, 1, 1, 0),
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(12),
                vertical: AppLayout.getHeight(12)),
            child: ListView(
              children: [
                Text(
                  "Tickets",
                  style: Styles.headline1.copyWith(fontSize: 30),
                ),
                SizedBox(
                  height: AppLayout.getHeight(20),
                ),
                const TwoSideCard(text1: "Upcoming", text2: "Previous"),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: AppLayout.getScreenWidth() * 0.90,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(25)),
                  child: Column(
                    children: [
                      TicketInfo(
                        ticket: ticketList[0],
                        isColor: true,
                      ),
                      Container(
                        height: AppLayout.getHeight(1),
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(10)),
                        child: Column(
                          children: [
                            const InfoCard(
                                text1: "FlutterDB",
                                text2: "Passenger",
                                text3: "213a331aaz",
                                text4: "passport"),
                            SizedBox(
                              height: AppLayout.getHeight(40),
                            ),
                            const DotLine(),
                            const InfoCard(
                                text1: "FlutterDB",
                                text2: "Passenger",
                                text3: "213a331aaz",
                                text4: "passport"),
                            SizedBox(
                              height: AppLayout.getHeight(40),
                            ),
                            const DotLine(),
                            const InfoCard(
                                text1: "FlutterDB",
                                text2: "Passenger",
                                text3: "213a331aaz",
                                text4: "passport"),
                            SizedBox(
                              height: AppLayout.getHeight(40),
                            ),
                            const DotLine(),
                            const InfoCard(
                                text1: "FlutterDB",
                                text2: "Passenger",
                                text3: "213a331aaz",
                                text4: "passport"),
                            SizedBox(
                              height: AppLayout.getHeight(40),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TicketInfo(ticket: ticketList[0])
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 300,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.5, color: Colors.black)),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 4,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 300,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.5, color: Colors.black)),
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 4,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
