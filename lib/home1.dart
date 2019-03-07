import 'package:flutter/material.dart';
import 'pages/statistics.dart';
import 'pages/breakdown.dart';
import 'pages/personal.dart';
import 'pages/preventive.dart';
import 'pages/shift.dart';
import 'pages/stores.dart';
import 'pages/equipment.dart';
import 'pages/scheduled.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: new BoxDecoration(
                       gradient: LinearGradient(colors: [Color(0xfffff9c4), Color(0xffb3c5fc) ]),
                  ),
      child: new ListView(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Statistics()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.trending_up,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Statistics',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Scheduled()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.build,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Scheduled Maintenance',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Preventive()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.build,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Preventive Maintenance',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Breakdown()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.build,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Breakdown Maintenance',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Equipment()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.power,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Equipment History',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Stores()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.store,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Stores',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Personal()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Personal',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shift()));
                  },
                  child: Container(
                    child: Card(
                        child: ListTile(
                            leading: Icon(
                              Icons.filter_tilt_shift,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Shift Roaster',
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ))),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
