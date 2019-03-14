import 'package:flutter/material.dart';
import 'storesasset/assets.dart';

class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          title: new Text("Stores"),
        ),
        body: SingleChildScrollView(
            child: Container(
                child: new Column(
          children: <Widget>[
            new ListTile(
                title: new Text("Assets",
                    style: new TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0,
                       )),
                       trailing: new Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Assets()));
                }),
                new Divider(height: 1.0,),
          ],
        ))));
  }
}
