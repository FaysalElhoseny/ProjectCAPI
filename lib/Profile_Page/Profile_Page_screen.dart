import 'package:capi/Profile_Page/Profile/Profile_Page.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_view/bottom_bar_view.dart';
import 'Profile_Page_theme.dart';
import 'models/tab_icon_data.dart';





class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen>
    with TickerProviderStateMixin {
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: ProfilePageTheme.background,
  );

  late final AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    for (final TabIconData tab in tabIconsList) {
      tab.isSelected = false;
    }
    tabIconsList[0].isSelected = true;
    tabBody = ProfilePage(animationController: animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ProfilePageTheme.background,
      child: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return Stack(
              children: <Widget>[
                tabBody,
                bottomBar(),
              ],
            );
          }
        },
      ),

    );

  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController.reverse().then<dynamic>((_) {
                if (mounted) {
                  setState(() {
                    tabBody =
                        ProfilePage(animationController: animationController);
                  });
                }
                return;
              });
            }
          },
        ),
      ],
    );
  }
}
