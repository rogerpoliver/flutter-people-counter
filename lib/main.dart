import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "People Counter",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pessoas: 0",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  "+1",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  "-1",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                onPressed: () {},
              )
            ],
          ),
          Text("Pode Entrar",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ],
      )));
}
