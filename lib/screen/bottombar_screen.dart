import 'package:flutter/material.dart';
import 'package:fmylife/screen/home_screen.dart';
import 'package:fmylife/screen/profile.dart';
import 'package:fmylife/screen/search_screen.dart';
import 'package:fmylife/screen/ticket_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int index = 3;
  List<Widget> screenList = const <Widget>[
    HomeScreen(),
    Search(),
    TicketScreen(),
    Profile()
  ];
  void changeScreen(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screenList[index]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: changeScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: "ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
