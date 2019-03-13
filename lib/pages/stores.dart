import 'package:flutter/material.dart';

class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  int rval = 0;
  int count = 1;

  final GlobalKey<ScaffoldState> mScaffoldState =
      new GlobalKey<ScaffoldState>();

  void buttonClick() {
    count = 0;
    final snackBar = new SnackBar(content: new Text('Submitted'));
    mScaffoldState.currentState.showSnackBar(snackBar);
  }

  void buttonClick1() {
    final snackBar =
        new SnackBar(content: new Text('Already Submitted. Please Exit'));
    mScaffoldState.currentState.showSnackBar(snackBar);
  }

  void method1(value) {
    setState(() {
      rval = value;
    });
  }

  DateTime dataInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mScaffoldState,
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Stores"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: new Column(
            children: <Widget>[
              new ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Asset code",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.confirmation_number,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Shelf/slot no",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.note,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "threshold quantity",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.fiber_manual_record,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Shelf life/calibration",
                  ),
                ),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Quantity available",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.update,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Last Purchase",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.update,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Last used",
                  ),
                ),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(
                  Icons.extension,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Dimensions",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Weight",
                  ),
                ),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(
                  Icons.image,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Picture",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.schedule,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Lead Time for procurement",
                  ),
                ),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Vendors name",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.subtitles,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Vendor Contract Details",
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text(
                      "Submit",
                      style: new TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Theme.of(context).accentColor,
                    elevation: 15.0,
                    splashColor: Colors.white70,
                    onPressed: () {
                      if (count == 1)
                        buttonClick();
                      else
                        buttonClick1();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
