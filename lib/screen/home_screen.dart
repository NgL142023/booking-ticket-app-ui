import 'package:flutter/material.dart';
import 'package:fmylife/util/app_info.dart';
import 'package:fmylife/util/app_layout.dart';
import 'package:fmylife/util/app_styles.dart';
import 'package:fmylife/widgets/hotels.dart';
import 'package:fmylife/widgets/ticket_info.dart';
import 'package:fmylife/widgets/viewall.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 246, 246),
      body: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(10)),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good moring", style: Styles.textStyle1),
                    Text(
                      "Booking Tickets",
                      style: Styles.headline1,
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/hoa anh dao.png"))),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(AppLayout.getHeight(10)),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(10),
                  vertical: AppLayout.getHeight(10)),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 239, 231, 231),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: Styles.textStyle1,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ViewAll(text1: "Upcoming Flights", text2: "view all"),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:
                        ticketList.map((e) => TicketInfo(ticket: e)).toList())),
            const ViewAll(text1: "Hotels", text2: "view all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: hotelList.map((e) => Hotels(hotel: e)).toList()),
            )
          ],
        ),
      ),
    );
  }
}
