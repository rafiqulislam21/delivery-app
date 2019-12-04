import 'package:delivery_app/pages/signup.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:delivery_app/widgets/custom_social_button.dart';
import 'package:delivery_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFE3E3E3),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 50,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
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
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomButton(
                            onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => Dashboard()),
//                              );
                            },
                            buttonText: "SIGN IN",
                            color: Theme.of(context).primaryColor,
                            textColor: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'login with',
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom:16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        CustomSocialButton(
                          onPressed: () {
//
                          },
                          buttonIcon: Icons.add,
                          backgroundColor: Colors.blue[900],
                          iconColor: Colors.white,
                        ),
                        CustomSocialButton(
                          onPressed: () {
//
                          },
                          buttonIcon: Icons.add,
                          backgroundColor: Colors.white,
                          iconColor: Colors.red,
                        ),
                        CustomSocialButton(
                          onPressed: () {
//
                          },
                          buttonIcon: Icons.add,
                          backgroundColor: Colors.lightBlue,
                          iconColor: Colors.white,
                        ),
                      ],
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text(
                        "Haven't Account?",
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      InkWell(
                          child: Text(
                            " Sign Up",
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          }
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
