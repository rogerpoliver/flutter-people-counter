import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "People Counter", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Há mesas disponíveis";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      if (_people >= 10) {
        _infoText = "Não há mesas disponíveis";
      } else {
        _infoText = "Há mesas disponíveis";
      }

      if (_people < 0) {
        _people = 0;
      } else if (_people > 10) {
        _people = 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/background.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Clientes: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(_infoText,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0)),
          ],
        )
      ],
    );
  }
}
