import 'package:flutter/material.dart';
import 'package:testing/Bal.dart';
import 'package:testing/bookings.dart';
import 'package:testing/homepage.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Column(children: [
          Row(children: [
            Container(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/ProfileHH.jpg"),
                  radius: 40,
                )),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Hello, Hariz,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ]),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Text(
              "My Wallet",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Bal(),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              color: Colors.red,
              textColor: Colors.yellow,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.grey,
            ),
          ),
        ]));
  }
}
