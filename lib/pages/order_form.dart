import 'package:delivery_app/widgets/custom_button.dart';
import 'package:delivery_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class OrderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE3E3E3),
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(

              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Order Details',
                    style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 10,
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
                  hintText: 'From (Address)',
                  isPassword: false,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextfield(
                  hintText: 'To (Address)',
                  isPassword: false,
                ),
                SizedBox(
                  height: 30,
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
                             Navigator.of(context).pop();
                        },
                        buttonText: "Close",
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => Dashboard()),
//                              );
                        },
                        buttonText: "Place Order",
                        color: Theme.of(context).primaryColor,
                        textColor: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      );

  }
}
