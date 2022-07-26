import 'package:capi/quiz/controllers/question_controller.dart';
import 'package:capi/screen/LogInPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:capi/Side_Menu/menu_item.dart';

TextStyle s5 = TextStyle(
  fontSize: 22,
  fontFamily: 'Comfort',
);

TextStyle logout = TextStyle(
  fontSize: 20,
  fontFamily: 'Comfort',
);
TextStyle button =
TextStyle(fontSize: 18, fontFamily: 'Comfort', color: Colors.indigo);

class MenuItems {

  static const profile = Capi_Menu_Item('Profile', Icons.person);
  static const Settings = Capi_Menu_Item('Settings', Icons.settings);
  static const aboutUs = Capi_Menu_Item('About Us', Icons.info);

  static const all = <Capi_Menu_Item>[
    profile,
    Settings,
    aboutUs,
  ];
}

class MenuPage extends StatelessWidget {
  final Capi_Menu_Item currentItem;
  final ValueChanged<Capi_Menu_Item> onSelectedItem;

  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Theme(
    data: ThemeData.dark(),

    child:
    Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/male.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Hello' + ' Ahmed',
                style: s5,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ...MenuItems.all.map(buildCapi_Menu_Item).toList(),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: Color(0xFFFAFAFA),
                    title: Text(
                      'Retake Quiz' '\n',
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
                              QuestionController _qnController = Get.put(QuestionController());
                                    _qnController.retakeQuiz();
                            },
                            child: Text('Yes',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white, fontFamily: 'Comfort'))),
                      )

                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Text(
                    'Retake Quiz',
                      style: TextStyle(color:Colors.white, fontFamily: "Comfort",fontWeight: FontWeight.bold, fontSize: 22)
                  ),
                ),

              ),
            ),

            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: TextButton(
                onPressed: () => showDialog<String>(
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
                            onPressed: ()async {
                              await FirebaseAuth.instance.signOut();
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
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Text(
                    'Logout',
                    style: s5,
                  ),
                ),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    onSurface: Colors.red,
                    side: BorderSide(color: Colors.white, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    )),
              ),
            ),
            Spacer(
              flex: 2,
            ),


          ],
        ),
      ),
    ),
  );

  Widget buildCapi_Menu_Item(Capi_Menu_Item item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(
        item.icon,
        size: 23,
      ),
      title: Text(
        item.title,
        style: s5,
      ),
      onTap: () => onSelectedItem(item),
    ),
  );
}
