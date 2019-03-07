import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CMRL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _pseudoController = new TextEditingController();
  var _passwordController = new TextEditingController();
  var data;
  var _isSecured = true;
  @override
// class MyHomePage extends StatelessWidget {
//   @override
  Widget build(BuildContext context) {
    Future<String> getLogin(String pseudo, String password) async {
      var response = await http.get(
          Uri.encodeFull(
              "http://cmrl.vhrsnext.com/api/method/login?usr=$pseudo&pwd=$password"),
          headers: {"Accept": "application/json"});
          print(response.body);
      setState(() {
        var convertDataToJson = json.decode(response.body);
        data = convertDataToJson;
      });
    }
    
      
    
    

    /*********************Alert Dialog Pseudo******************************/
    void onSignedInErrorPassword() {
      var alert = new AlertDialog(
        title: new Text("Login Error"),
        content: new Text(
            "There was an Error signing in. Please try again."),
      );
      showDialog(context: context, child: alert);
    }


    /******************* Check Data ****************************/
    VerifData(String pseudo, String password, var datadb) {
        print(datadb);
        if (datadb["message"] == 'Logged In') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } else {
          onSignedInErrorPassword();
        }

    }

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Expanded(
                  child: new Container(
                    height: 20.0,
                    decoration: new BoxDecoration(
                   
                      color: Colors.white12,
                    ),
                  ),
                )
              ],
            ),
            Image.asset('assets/cmbg.jpg'),
            new Row(
              children: <Widget>[
                Expanded(
                  child: new Container(
                    height: 5.0,
                    decoration: new BoxDecoration(
                      color: Colors.white12,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: _pseudoController,
                decoration: new InputDecoration(
                  labelText: 'Email',
                  filled: true,
                ),
              ),
            ),
            new SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: _passwordController,
                obscureText: _isSecured,
                decoration:
                    new InputDecoration(labelText: 'Password', filled: true),
              ),
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 5.0, top: 5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      // onTap: () {
                      //   getLogin(
                      //       _pseudoController.text, _passwordController.text);
                      //   VerifData(_pseudoController.text,_passwordController.text,data);
                      // },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF2832c2),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Login",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: new Text("Forgot Password?",
                            style: new TextStyle(
                                fontSize: 17.0, color: Color(0xFf4169e1)))),
                  ),
                )
              ],
            ),
            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: <Widget>[
            //       Padding(
            //         padding: const EdgeInsets.only(bottom: 15.0),
            //         child: new Text("Create A New Account ",
            //             style: new TextStyle(
            //                 fontSize: 17.0,
            //                 color: Color(0xFf4169e1),
            //                 fontWeight: FontWeight.bold)),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
