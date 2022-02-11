import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Column(children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              "Loafy",
              style: TextStyle(fontSize: 40, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("images/banner.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              "Description",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Welcome to Loafy, where you can participate in a variety of activities. We understand the frustration of wanting to try new activities without having to invest in expensive equipment or instruments, so we are a business that rents out equipment and offers low-cost courses while you will be able to expand your soical circle.",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ]));
  }
}
