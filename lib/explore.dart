import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Explore",
                    style: new TextStyle(fontSize: 30.0, color: Color(0xFf4169e1)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Card(
                  child: ListTile(
                      title: Text(
                'Maintenance Guide',
                style: new TextStyle(fontSize: 20.0, color: Colors.brown),
              ))),
              Card(
                  child: ListTile(
                      title: Text(
                'Knowledge Sharing Center',
                style: new TextStyle(fontSize: 20.0, color: Colors.brown),
              ))),
            ],
          )),
        )
      ],
    );
  }
}
