import 'package:delivery_app/pages/dashboard.dart';
import 'package:delivery_app/pages/order_form.dart';
import 'package:delivery_app/pages/order_track.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<String> titles = [
    'Iphone',
    'Samsung',
    'Xiaomi',
    'One plus',
    'Iphone',
    'Samsung',
    'Xiaomi',
    'One plus',
    'Iphone',
    'Samsung',
    'Xiaomi',
    'One plus'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  child: OrderForm(),
//                  child: AddEventPagePage(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                );
              }).then((val) {
            setState(() {});
          });
        },
        child: Icon(Icons.playlist_add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.list, color: Theme.of(context).accentColor),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'Orders',
          style: TextStyle(
              fontSize: 35,
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 20, bottom: 10, right: 20),
            child: _myListView()),
      ),
    );
  }

  Widget _myListView() {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        final item = titles[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Container(
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(14)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 5, offset: Offset(0, 3))
                ]),
            child: ListTile(
              isThreeLine: true,
              leading: Column(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.mobile_screen_share),
                  ),
                ],
              ),
              title: Text(item),
              subtitle: Text(item),
              trailing: Column(
                children: <Widget>[
                  Text(
                    "45000 tk.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "delevered",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderTrack()),
                );
                //                                  <-- onTap
//            setState(() {
//              titles.insert(index, 'Planet');
//            });
              },
              onLongPress: () {
                //                            <-- onLongPress
//            setState(() {
//              titles.removeAt(index);
//            });
              },
            ),
          ),
        );
      },
    );
  }
}
