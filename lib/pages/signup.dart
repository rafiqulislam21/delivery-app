import 'package:delivery_app/pages/signin.dart';
import 'package:delivery_app/widgets/custom_button.dart';
import 'package:delivery_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFE3E3E3),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 50,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  CustomTextfield(
                    hintText: 'First Name',
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextfield(
                    hintText: 'Last Name',
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextfield(
                    hintText: 'Email Address',
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
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Signin()),
                              );
                            },
                            buttonText: "SIGN UP",
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                        child: Text(
                          'Already member?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[400],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signin()),
                          );
                        }
                    ),
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
