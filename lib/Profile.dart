import 'package:flutter/material.dart';
import 'package:testing/homepage.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  final String passedName;
  final String passedUsername;
  final String passedEmail;
  const Profile(
      {Key key,
      String title,
      this.passedName,
      this.passedUsername,
      this.passedEmail,
      this.passedPass})
      : super(key: key);
  final String passedPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Logout',
        ),
      ),
      body: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 4,
                  width: 450,
                  fit: BoxFit.cover,
                  image: AssetImage('images/Pbanner.jpg'),
                ),
                Positioned(
                  bottom: -50.0,
                  child: passedUsername == 'rizzy'
                      ? CircleAvatar(
                          backgroundImage: AssetImage('images/ProfileHH.jpg'),
                          backgroundColor: Colors.blue,
                          radius: 100,
                        )
                      : CircleAvatar(
                          backgroundImage: AssetImage('images/ProfileHH.jpg'),
                          // backgroundImage: AssetImage('images/AccLogo.png'),
                          backgroundColor: Colors.red,
                          radius: 80,
                        ),
                )
              ]),
          SizedBox(
            height: 45,
          ),
          ListTile(
            title: Center(
                child: Text(
              'UserName',
              style: TextStyle(color: Colors.red, fontSize: 20),
            )),
            // subtitle: Center(child: Text("${passedUsername} ")),
            subtitle: Center(child: Text("Rizzy")),
          ),
          ListTile(
            title: Text(
              'Name',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Hariz",
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Email',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Harizhadi@yahoo.com",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Text(
                "Update",
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
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
