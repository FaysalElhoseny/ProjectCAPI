
import 'package:capi/Side_Menu/menu_item.dart';
import 'package:capi/Side_Menu/menu_page.dart';
import 'package:capi/Profile_Page/Profile_Page_screen.dart';
import 'package:capi/screen/Settings_Screen.dart';
import 'package:capi/screen/aboutUs_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PrePage extends StatefulWidget {
  const PrePage({Key? key}) : super(key: key);

  @override
  _PrePageState createState() => _PrePageState();
}

class _PrePageState extends State<PrePage> {
  Capi_Menu_Item currentItem = MenuItems.profile;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        menuScreen: MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() => currentItem = item);
          },
        ),
        mainScreen: getScreen(),
        borderRadius: 30,
        showShadow: true,
        angle: 0.0,
        slideWidth: MediaQuery.of(context).size.width * .60,
        openCurve: Curves.fastOutSlowIn,
        menuBackgroundColor: Colors.indigo,

        closeCurve: Curves.bounceIn,
      );

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.profile:
        return ProfilePageScreen();
      case MenuItems.aboutUs:
        return AboutUsPage();
      case MenuItems.Settings:
        return SettingsPage();
      default:
        return ProfilePageScreen();
    }
  }
}
