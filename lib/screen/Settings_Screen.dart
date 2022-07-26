import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:capi/Side_Menu/menu_widget.dart';
import 'package:capi/screen/LogInPage.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Side_Menu/menu_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontFamily: "Comfort"),
        ),
        centerTitle: true,
        leading: MenuWidget(),
        elevation: 0,
        backgroundColor: Color(0xFFfafafa),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: AssetImage("assets/images/male.jpg"),
                    ),
                    color: Colors.red,
                    shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Ahmed Abd ElRahman",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Comfort",
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SettingsGroup(
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: CupertinoIcons.pencil_outline,
                  iconStyle: IconStyle(),
                  title: 'Appearance',
                  subtitle: "Customize App",
                ),
                SettingsItem(
                  onTap: () {},
                  icons: Icons.language,

                  iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red
                  ),
                  title: 'Language',
                  subtitle: "Change",
                ),
                SettingsItem(
                  onTap: () {},
                  icons: Icons.dark_mode_rounded,
                  iconStyle: IconStyle(
                    iconsColor: Colors.white,
                    withBackground: true,
                    backgroundColor: Colors.black
                  ),
                  title: 'Dark Mode',
                  subtitle: "Automatic",
                  trailing: Switch.adaptive(
                    value: false,
                    onChanged: (value) {

                    },
                  ),
                ),
              ],
            ),
            SettingsGroup(
              settingsGroupTitle: "Account",
              items: [
                SettingsItem(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: Color(0xFFFAFAFA),
                      title: Text(
                        'Logging Out' '\n',
                        style: logout,
                        textAlign: TextAlign.center,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(20))),
                      content: Text('Are You Sure?',
                          style: logout, textAlign: TextAlign.center),
                      actions: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 0, bottom: 0,left: 0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff03A9F4),
                                minimumSize: Size(270, 50),
                                shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              ),
                              onPressed: (){
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => LogIn()),
                                      (Route<dynamic> route) => false,
                                );
                              },
                              child: Text('Yes',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white, fontFamily: 'Comfort'))),
                        )

                      ],
                    ),
                  ),
                  icons: Icons.exit_to_app_rounded,
                  title: "Sign Out",
                  subtitle: "Log Out",
                ),
                SettingsItem(
                  onTap: () {},
                  icons: CupertinoIcons.delete_solid,
                  title: "Delete My Account",
                  subtitle: "Permanently Delete ",
                  titleStyle: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
