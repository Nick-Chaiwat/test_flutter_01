import 'package:flutter/material.dart';
import 'package:new2023/screens/calendar.dart';
import 'package:new2023/screens/dashBoard.dart';
import 'package:new2023/screens/setting.dart';
import 'package:new2023/screens/user.dart';

import '../component/bottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    index == 10 ? print("Camera on") : pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(235, 51, 20, 224),
        body: PageView(
          controller: pageController,
          children: const [
            DashboardPage(),
            UserPage(),
            CalendarPage(),
            SettingPage()
          ],
        ),
        bottomNavigationBar: BottomNavBar(_selectedIndex, onTapped));
  }
}
