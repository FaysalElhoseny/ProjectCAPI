import 'package:capi/Firebase/Auth.dart';


import 'package:capi/screen/SignUpPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


TextStyle s1 =
TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: 'Comfort');
TextStyle s2 = TextStyle(color: Colors.red, fontSize: 20,fontFamily: 'Comfort');
bool _isObscure= true;


class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: Formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 5, left: 5),
                      child: Image.asset('assets/images/LogIn.png'),
                    ),
                    SizedBox(height: 40,),
                    Text(
                      'Lets Get Started',
                      style: TextStyle(
                          color: Colors.blueGrey, fontFamily: 'Comfort', fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                      child: TextFormField(
                        controller: email,
                        validator: (value){
                          if (value!.isEmpty)
                            {
                              return "An Email Must Be Entered";
                            }
                          return null;
                        },

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 50, right: 50),
                      child: TextFormField(
                        controller: password,
                        validator: (value){
                          if (value!.isEmpty)
                          {
                            return "A Password Must Be Entered";
                          }
                          return null;
                        },
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                           icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility,),
                            onPressed: () {
                             setState(() {_isObscure = !_isObscure;
                          });
                        },
                      ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                      child:
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff03A9F4),
                            minimumSize: Size(500, 55),
                            shape:
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                          ),
                          onPressed: (){
                            if (Formkey.currentState!.validate()){
                              LogInFunction(this.email.text, this.password.text);
                            }
                                                   },
                          child: Text('Log In',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white, fontFamily: 'Comfort'))),

                    ),

                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: 'Dont have an account? ', style: s1),
                        TextSpan(
                            text: 'Sign Up',
                            style: s2,

                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignUp()),
                                );
                              })
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}