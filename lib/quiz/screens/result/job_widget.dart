import 'package:capi/Profile_Page/Profile_Page_theme.dart';
import 'package:capi/Side_Menu/PrePage.dart';
import 'package:capi/quiz/models/Job.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';



class JobWidget extends StatefulWidget {
  JobModel jobObject = new JobModel(image: '', name: '', description: '');

  JobWidget(this.jobObject);

  @override
  _JobWidgetState createState() => _JobWidgetState();
}

class _JobWidgetState extends State<JobWidget> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            height: 400,
            width: 240,
            decoration: BoxDecoration(
              border:
              Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(20),
              image: new DecorationImage(
                  image: AssetImage("${widget.jobObject.image}"),
                  fit: BoxFit.cover),

              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: ProfilePageTheme.grey.withOpacity(0.2),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 10.0),
              ],

            ),
          ),

          onTap: () {

            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Color(0xFFffffff),
                  title: Text(
                    "${widget.jobObject.name}",
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Comfort'),
                    textAlign: TextAlign.center,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  content: Builder(
                    builder: (context) {
                      // Get available height and width of the build area of this widget. Make a choice depending on the size.
                      var height = MediaQuery.of(context).size.height;
                      var width = MediaQuery.of(context).size.width;

                      return Container(
                        height: height - 400,
                        width: width - 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Container(
                                  height: 260,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    image: new DecorationImage(
                                        image: AssetImage(
                                            "${widget.jobObject.image}"),
                                        fit: BoxFit.cover),
                                  )),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Comfort',
                                        fontSize: 17),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text("${widget.jobObject.description}",style: TextStyle(color: Colors.black, fontFamily: 'Comfort', fontSize: 15),textAlign: TextAlign.left,)




                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff03A9F4),
                          minimumSize: Size(500, 55),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {

                          Get.offAll(PrePage());
                        },
                        child: Text('Confirm',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Comfort')))
                  ],
                ));
          },
        ),
        SizedBox(
          height: 10,
        ),
        Text("${widget.jobObject.name}",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontFamily: 'Comfort', fontWeight: FontWeight.w600))
      ],
    );
  }
}