import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:navbar_with_getx/controller/controller.dart';
import 'package:navbar_with_getx/pages/chart.dart';
import 'package:navbar_with_getx/pages/home.dart';
import 'package:navbar_with_getx/pages/note.dart';
import 'package:navbar_with_getx/pages/setting.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeScreen(),
            NoteScreen(),
            ChartScreen(),
            SettingScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black38,
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.grey.shade300,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottombarItem(IconlyBold.home,'Home'),
              _bottombarItem(IconlyBold.message,'Note'),
              _bottombarItem(IconlyBold.chart,'Chart'),
              _bottombarItem(IconlyBold.setting,'Setting'),
            ]
        ),
      );
    });
  }
}
  _bottombarItem(IconData icon,String label){
  return BottomNavigationBarItem( icon: Icon(icon),label: label);
  }