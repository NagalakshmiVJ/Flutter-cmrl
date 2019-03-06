import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'dart:convert';

class Info extends StatelessWidget {
  var data;
  @override
  Widget build(BuildContext context) {
    Future<String> logout() async {
      var response = await http.get(
          Uri.encodeFull("http://cmrl.vhrsnext.com/api/method/logout"),
          headers: {"Accept": "application/json"});
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyApp()));
      data =json.decode(response.body);
      print(data);
      // setState(() {
      //   var convertDataToJson = json.decode(response.body);
      //   data = convertDataToJson;
      // });
    }

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
                    "Profile",
                    style:
                        new TextStyle(fontSize: 30.0, color: Color(0xFf4169e1)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              Card(
                  child: ListTile(leading: Icon(Icons.verified_user, color: Colors.blue),
                      title: Text(
                'View Profile',
                style: new TextStyle(fontSize: 20.0,),
              ))),
              Card(
                  child: ListTile(leading: Icon(Icons.help, color: Colors.blue),
                      title: Text(
                'Help and Support',
                style: new TextStyle(fontSize: 20.0,),
              ))),
              Card(
                  child: ListTile(leading: Icon(Icons.settings, color: Colors.blue),
                      title: Text(
                'Settings & Privacy',
                style: new TextStyle(fontSize: 20.0,),
              ))),
              Card(
                  child: ListTile(leading: Icon(Icons.exit_to_app, color: Colors.blue),
                      onTap: () {
                        logout();
                      },
                      title: Text(
                        'Log Out',
                        style:
                            new TextStyle(fontSize: 20.0,),
                      ))),
            ],
          )),
        )
      ],
    );
  }
}
