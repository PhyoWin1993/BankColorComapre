import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Makeitrain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeitrainState();
  }
}

class MakeitrainState extends State<Makeitrain> {
  int _moneyCounter = 0;
  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich",
                style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9,
                ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text(
                '$_moneyCounter',
                style: new TextStyle(
                  color: _moneyCounter > 5000 ? Colors.greenAccent : Colors.red,
                  fontWeight: FontWeight.w800,
                  fontSize: 46.9,
                ),
              ),
            )),
            new Expanded(
              child: new Center(
                child: new FlatButton(
                    color: Colors.lightGreen,
                    onPressed: _rainMoney,
                    child: new Text(
                      "Let It Rain.",
                      style: new TextStyle(
                        fontSize: 19.9,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
