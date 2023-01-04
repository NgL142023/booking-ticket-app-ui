import 'package:flutter/material.dart';

import 'package:fmylife/util/app_layout.dart';
import 'package:fmylife/util/app_styles.dart';
import 'package:fmylife/widgets/icon_card.dart';
import 'package:fmylife/widgets/twoside.dart';
import 'package:fmylife/widgets/viewall.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(12),
          vertical: AppLayout.getWidth(12)),
      child: ListView(children: [
        Text(
          "What are\nyou looking for?",
          style: Styles.headline1.copyWith(fontSize: 34),
        ),
        SizedBox(
          height: AppLayout.getHeight(30),
        ),
        const TwoSideCard(text1: "Airline tickets", text2: "Hotels"),
        SizedBox(
          height: AppLayout.getHeight(30),
        ),
        const IconCard(
            text: "Departure time", icon: Icons.airplane_ticket_outlined),
        SizedBox(
          height: AppLayout.getHeight(9),
        ),
        const IconCard(text: "Arrival time", icon: Icons.airline_seat_flat),
        SizedBox(
          height: AppLayout.getHeight(9),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.blue,
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Find tickets",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: AppLayout.getHeight(20),
        ),
        const ViewAll(text1: "Upcoming", text2: 'view all'),
        SizedBox(
          height: AppLayout.getHeight(20),
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: AppLayout.getHeight(300),
            width: AppLayout.getScreenWidth() * 0.4,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.yellow),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: AppLayout.getHeight(200),
                    width: AppLayout.getScreenWidth() * 0.36,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/hoa anh dao.png')),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                  height: AppLayout.getHeight(150),
                  width: AppLayout.getScreenWidth() * 0.36,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green,
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: -30,
                      right: -60,
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 7.5,
                                color: const Color.fromARGB(255, 5, 102, 9))),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: Styles.textStyle3,
                        ),
                        Text(
                          "123 123 123 123123 123123 a123",
                          style: Styles.textStyle3,
                        )
                      ],
                    ),
                  ])),
            ],
          )
        ]),
      ]),
    ));
  }
}
