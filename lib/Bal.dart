import 'package:flutter/material.dart';

class Bal extends StatefulWidget {
  Bal({Key key}) : super(key: key);

  @override
  State<Bal> createState() => _BalState();
}

class _BalState extends State<Bal> {
  int msg = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red[300]),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.red[300]),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Total Balance,',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${msg}',
                    style: TextStyle(fontSize: 35, color: Colors.yellow)),
                Text(
                  ' SGD',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.yellow),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'SGD:',
                  style: TextStyle(fontSize: 15, color: Colors.yellow),
                ),
                Text(
                  ' Singapore Currency',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text(
                      "\$5",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: _changeText,
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text(
                      "\$10",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: _changeText1,
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text(
                      "\$15",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: _changeText2,
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text(
                      "\$20",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: _changeText3,
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text(
                      "\$25",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: _changeText4,
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text(
                      "\$50",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: _changeText5,
                    color: Colors.red,
                    textColor: Colors.yellow,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      msg = msg + 5;
      ;
    });
  }

  _changeText1() {
    setState(() {
      msg = msg + 10;
      ;
    });
  }

  _changeText2() {
    setState(() {
      msg = msg + 15;
      ;
    });
  }

  _changeText3() {
    setState(() {
      msg = msg + 20;
      ;
    });
  }

  _changeText4() {
    setState(() {
      msg = msg + 25;
      ;
    });
  }

  _changeText5() {
    setState(() {
      msg = msg + 50;
      ;
    });
  }
}
