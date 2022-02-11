import 'package:flutter/material.dart';
import 'package:testing/Booked.dart';
import 'package:testing/Wallet.dart';
import 'package:testing/about.dart';
import 'package:testing/bookings.dart';
import 'package:testing/profile.dart';
import 'login.dart';

class Home extends StatefulWidget {
  final String passedName;
  final String passedUsername;
  final String passedEmail;
  final String passedPass;

  const Home(
      {Key key,
      this.passedName,
      this.passedUsername,
      this.passedEmail,
      this.passedPass})
      : super(key: key);

  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    About(),
    BookingsPage(),
    Wallet(),
    BookedPage(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: new Icon(Icons.info),
            title: new Text('About'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: new Icon(Icons.auto_stories),
            title: new Text('Book Now'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: new Icon(Icons.account_balance_wallet),
            title: new Text('Wallet'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: new Icon(Icons.bookmark),
            title: new Text('Booked'),
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.person),
              title: Text('Profile'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
