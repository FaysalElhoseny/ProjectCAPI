
import 'package:capi/Firebase/Auth.dart';

import 'package:flutter/material.dart';

bool _isObscure= true;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
                  children:[
                    Padding(
                      padding: const EdgeInsets.only( right: 10, left: 10),
                      child: Image.asset('assets/images/sign.png',fit: BoxFit.fill,),
                    ),
                    SizedBox(height: 10,),

                    Text('Welcome', style: TextStyle(color: Colors.blueGrey, fontFamily:'Comfort',fontSize: 30),),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 50, right:50 ),
                      child: TextFormField(
                        validator: (value){
                          if (value!.isEmpty)
                          {
                            return "Please Provide Your Name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter your name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15 ,left: 50, right:50 ),
                      child: TextFormField(
                        validator: (value){
                          if (value!.isEmpty)
                          {
                            return "Please Provide Your Phone";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Enter your phone number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15 ,left: 50, right:50 ),
                      child: TextFormField(
                       controller: email ,
                        validator: (value){
                          if (value!.isEmpty)
                          {
                            return "Please Provide Your Email";
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
                      padding: const EdgeInsets.only( top:15 ,left: 50, right:50 ),
                      child: TextFormField(
                        controller: password,
                        validator: (value){
                          if (value!.isEmpty)
                          {
                            return "Please Enter A Password" ;

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
                  padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(400, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {
                      if (Formkey.currentState!.validate()){
                        SignUpFunction(this.email.text, this.password.text);

                      }

                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfort',
                            fontSize: 20)


                    ),
                  ),
                ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}