import 'package:flutter/material.dart';

class OrderTrack extends StatelessWidget {
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
                      'Order Details',
                      style: TextStyle(
                          fontSize: 35,
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ID',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AB239752',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Date:',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '16th December 2019, Monday',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Price',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '45000 tk',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Status:',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Delivered',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
//                Padding(
//                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                  child: ListView.builder(
//                    itemCount: 5,
//                    shrinkWrap: true,
//                    itemBuilder: (context, index) {
//                      return Row(
//                        children: <Widget>[
//                          Container(
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.all(Radius.circular(50)),
//                              boxShadow: [
//                                BoxShadow(
//                                  offset: Offset(0,3),
//                                  color: Colors.grey[500],
//                                  blurRadius: 5
//                                )
//                              ]
//                            ) ,
//                            child: Icon(
//                              Icons.fiber_manual_record,
//                              size: 20,
//                              color: Theme.of(context).primaryColor,
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(20.0),
//                            child: Text('dhaka'),
//                          )
//
//                        ],
//                      );
//                    },
//                  ),
//                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Track Order:',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20,),

                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,3),
                                        color: Colors.grey[500],
                                        blurRadius: 5
                                    )
                                  ]
                              ) ,
                              child: Icon(
                                Icons.fiber_manual_record,
                                size: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Order Confirmed'
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 2,
                            height: 60,
                            color: Theme.of(context).accentColor,
                          ),
                        ),


                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,3),
                                        color: Colors.grey[500],
                                        blurRadius: 5
                                    )
                                  ]
                              ) ,
                              child: Icon(
                                Icons.fiber_manual_record,
                                size: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                                'Pick and Pack'
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 2,
                            height: 60,
                            color: Theme.of(context).accentColor,
                          ),
                        ),



                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,3),
                                        color: Colors.grey[500],
                                        blurRadius: 5
                                    )
                                  ]
                              ) ,
                              child: Icon(
                                Icons.fiber_manual_record,
                                size: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                                'Shipped'
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 2,
                            height: 60,
                            color: Theme.of(context).accentColor,
                          ),
                        ),




                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0,3),
                                        color: Colors.grey[500],
                                        blurRadius: 5
                                    )
                                  ]
                              ) ,
                              child: Icon(
                                Icons.radio_button_unchecked,
                                size: 20,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                                'Delivered'
                            )
                          ],
                        ),


                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
