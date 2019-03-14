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
          GestureDetector(
            onTap: (){
           setState((){
             Navigator.push(context, MaterialPageRoute(
               builder: (context) => Assetdetails()
             ));
           });
            },
                      child: new Container(
              child: new Text("Doors"),
            ),
          ),
          new Container(
            child: new Text("Wheels"),
          ),
          new Container(
            child: new Text("Seats"),
          ),
        ],
      ),
    );
  }
}
