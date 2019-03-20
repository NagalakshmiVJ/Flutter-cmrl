import 'package:flutter/material.dart';
import 'assetdetails.dart';

class Assets extends StatefulWidget {
  @override
  _AssetsState createState() => _AssetsState();
}

class _AssetsState extends State<Assets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Assets'),
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
              title: new Text("Doors",
                  style: new TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                  )),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Assetdetails()));
              }),
          new Divider(
            height: 1.0,
          ),
          new ListTile(
              title: new Text("Wheels",
                  style: new TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                  )),
              trailing: Container(child: new Icon(Icons.arrow_forward)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Assetdetails()));
              }),
          new Divider(
            height: 1.0,
          ),
          new ListTile(
              title: new Text("Seats",
                  style: new TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                  )),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Assetdetails()));
              }),
          new Divider(
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
