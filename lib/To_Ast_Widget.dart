
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


 ToAstWidget (String? massage ,Color? color){

  return Fluttertoast.showToast(
      msg: massage!,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    backgroundColor: color!,
   fontSize: 16,
    textColor: Colors.white
  );
}