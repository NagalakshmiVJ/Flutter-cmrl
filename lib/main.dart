import 'package:flutter/material.dart';
import 'package:flutter_cmrl/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('CMRL Login'),
          ),
          body: Column(
            children: [
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/cmbg.jpg'),
                    
                    new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Container(
                            height: 10.0,
                            decoration: new BoxDecoration(
                              color: Colors.white12,
                            ),
                          ),
                        )
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 10.0, top: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              child: new Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  child: new Text(
                                    "Sign in with E-mail",
                                    style: new TextStyle(
                                        fontSize: 16.0, color: Colors.white),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 5.0,
                                top: 10.0,
                                bottom: 10.0),
                            child: new Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                decoration: new BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: new Text(
                                  "Facebook",
                                  style: new TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                )),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0,
                                right: 10.0,
                                top: 10.0,
                                bottom: 10.0),
                            child: new Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                decoration: new BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: new Text(
                                  "Google",
                                  style: new TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                )),
                          ),
                        ),
                      ],
                    ),
                  
                    ],
                ),
              ),
            ],
          ),
        ));
  }
}
