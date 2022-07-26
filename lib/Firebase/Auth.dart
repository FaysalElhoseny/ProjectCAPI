import 'package:capi/To_Ast_Widget.dart';
import 'package:capi/quiz/quiz_intro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

UserCredential? userCredential ;
void SignUpFunction (String? email , String? password ) async {
  try {
    userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!).then((value) {
      ToAstWidget("Successfully Signed UP", Colors.green);
      Get.offAll(QuizIntro());

    });

  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      ToAstWidget("Weak Password", Colors.red);
    } else if (e.code == 'email-already-in-use') {
      ToAstWidget("The Account Already Exists for That Email.", Colors.red);
    }

  }catch (e) {
  }
}

void  LogInFunction (String? email , String? password )async {
  try {
    userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!, password: password!).then(
            (value){
          ToAstWidget("Successfully Logged In", Colors.green);
          Get.offAll(QuizIntro());
        }
    );

  } on FirebaseAuthException catch (e) {
    if (e.code == "user-not-found")
      ToAstWidget("User Not Found!", Colors.red);
    else if (e.code == "wrong-password")
      ToAstWidget("Wrong Password", Colors.red);

  } catch (e) {
  }
}
