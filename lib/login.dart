import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.greenAccent)
      ),
       body: Column(
            children: [
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/cmrlfront.jpg'),
                    Text(
                      'Chennai Metro Rail Limited',
                      style: new TextStyle(fontSize: 17.0, color: Colors.blue),
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                     child: new TextField(
                       decoration: new InputDecoration(
                         labelText: 'E-mail'
                       ),
                     ),
                   ),
                   new SizedBox(
                     height: 15.0,
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                     child: new TextField(
                       obscureText: true,
                       decoration: new InputDecoration(
                         labelText: 'Password'
                       ),
                     ),
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
                                  color: Colors.greenAccent,
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: new Text(
                                  "Login",
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
                               
                                child: new Text(
                                  "Forgot Password?",
                                  style: new TextStyle(
                                      fontSize: 16.0, color: Colors.greenAccent),
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
    );
  }
}
