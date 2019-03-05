import 'package:flutter/material.dart';
import 'pages/maintenance.dart';
import 'pages/knowledge.dart';

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
                    style:
                        new TextStyle(fontSize: 30.0, color: Color(0xFf4169e1)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Maintenance()));
                },
                child: Card(
                    child: ListTile(leading: Icon(Icons.autorenew),
                        title: Text(
                  'Maintenance Guide',
                  style: new TextStyle(fontSize: 20.0, ),
                ))),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Knowledge()));
                },
                child: Card(
                    child: ListTile(
                      leading: Icon(Icons.info_outline),
                        title: Text(
                  'Knowledge Sharing Center',
                  style: new TextStyle(fontSize: 20.0,),
                ))),
              ),
            ],
          )),
        )
      ],
    );
  }
}
