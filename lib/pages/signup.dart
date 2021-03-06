import 'package:delivery_app/pages/signin.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:delivery_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 0, left: 20, bottom: 10, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: 35,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                CustomTextfield(
                  hintText: 'Name',
                  isPassword: false,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  hintText: 'Phone number',
                  isPassword: false,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  hintText: 'Email Adress',
                  isPassword: false,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  hintText: 'Password',
                  isPassword: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => Dashboard()),
//                              );
                        },
                        buttonText: "Sign Up",
                        color: Theme.of(context).primaryColor,
                        textColor: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already Have an Account?",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    InkWell(
                        child: Text(
                          " Sign In",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signin()),
                          );
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
