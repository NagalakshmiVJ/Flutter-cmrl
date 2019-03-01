import 'package:flutter/material.dart';
import 'pages/statistics.dart';

class HomePage1 extends StatelessWidget {
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
                    "Home",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Statistics()));
                      },
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Statistics',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Scheduled Maintenance',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Preventive Maintenance',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Breakdown Maintenance',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Equipment History',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Stores',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Personal',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Card(
                      child: ListTile(
                          title: Text(
                    'Shift Roaster',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black),
                  ))),
                ),
              ),
            ],
          )),
        )
      ],
    );
  }
}
