import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
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
          'Orders',
          style: TextStyle(
              fontSize: 40,
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
              leading: Column(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.mobile_screen_share),
                  ),
                  SizedBox(height: 1,),
                  Text("New",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              title: Text(item),
              subtitle: Text(item),
              trailing: Column(
                children: <Widget>[
                  Text("45000 tk.",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("placed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                ],
              ),

              onTap: () {
//                print("tappppppppppppppppppppppppppppppppppppp");
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
