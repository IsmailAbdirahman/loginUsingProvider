import 'package:flutter/material.dart';
import 'package:signinemail/Home/Home.dart';

class DisplayData extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _DisplayDataState();
  }
}

class _DisplayDataState extends State<DisplayData> {
  int _currentIndex = 0;
  final List<Widget> _children = [

//    MultiProvider(
//      providers: [
//        ChangeNotifierProvider(create: (_) => SignInSignOutState()),
//      ],
//      child: Wrapper(),
//    ),

    InfoPage(),
    Text("ExplorrePage"),
    Text("PastTripsPage"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Budget App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: null,
          ),
//          IconButton(
//            icon: Icon(Icons.undo),
//            onPressed: () async {
//              try {
//                AuthService auth = Provider.of(context).auth;
//                await auth.signOut();
//                print("Signed Out!");
//              } catch (e) {
//                print (e);
//              }
//            },
//          )

        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.explore),
              title: new Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.history),
              title: new Text("Past Trips"),
            ),
          ]
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}