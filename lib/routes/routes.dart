import 'package:get/get.dart';
import 'package:navbar_with_getx/navbar/navbar.dart';
import 'package:navbar_with_getx/pages/nextscreen.dart';
import 'package:navbar_with_getx/pages/chart.dart';
import 'package:navbar_with_getx/pages/home.dart';
import 'package:navbar_with_getx/pages/note.dart';
import 'package:navbar_with_getx/pages/setting.dart';

class AppPage{
static List<GetPage> routes = [
  GetPage(name: navbar, page: ()=> const NavBar()),
  GetPage(name: home, page: ()=> const HomeScreen()),
  GetPage(name: note, page: ()=> const NoteScreen()),
  GetPage(name: chart, page: ()=> const ChartScreen()),
  GetPage(name: setting, page: ()=> const SettingScreen()),
  GetPage(name: nextscreen, page: ()=> const NextScreen())
];

  static getnavbar() => navbar;
  static gethome() => note;
  static getchart() => chart;
  static getsetting() => setting;
  static getnextScreen() => nextscreen;

  //
  static String navbar = '/';
  static String home = '/home';
  static String note = '/note';
  static String chart = '/chart';
  static String setting = '/setting';
  static String nextscreen = '/nextScreen';
}