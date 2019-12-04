import 'package:delivery_app/pages/order_form.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> titles = ['Iphone', 'Samsung', 'Xiaomi','One plus','Iphone', 'Samsung', 'Xiaomi','One plus','Iphone', 'Samsung', 'Xiaomi','One plus'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'Products',
          style: TextStyle(
              fontSize: 50,
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
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.mobile_screen_share),
              ),
              title: Text(item),
              subtitle: Text(item),
              trailing: Text("45000 tk.",style: TextStyle(fontWeight: FontWeight.bold),),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderForm()),
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
