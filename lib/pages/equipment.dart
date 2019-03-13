import 'package:flutter/material.dart';

class Equipment extends StatefulWidget {
  @override
  _EquipmentState createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {
  int rval = 0;
  bool btn;
  int count = 0;
  var date;
  final GlobalKey<ScaffoldState> mScaffoldState =
      new GlobalKey<ScaffoldState>();

  void buttonClick() {
    count++;
    btn = false;
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
        title: new Text("Equipment History"),
      ),
      body: SingleChildScrollView(
        child: Container(
          // decoration: new BoxDecoration(
          //   gradient:
          //       LinearGradient(colors: [Colors.tealAccent, Color(0xb3ffffff)]),
          // ),
          child: new Column(
            children: <Widget>[
              new ListTile(
                leading: const Icon(
                  Icons.looks_one,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Equipment Number",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.looks_two,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Serial No.",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.calendar_today,
                  color: Colors.blue,
                ),
                title: const Text('Date Of EIG Approval'),
                onTap: () async {
                  final dtpick = await showDatePicker(
                      context: context,
                      initialDate: new DateTime(1975),
                      firstDate: new DateTime(1950),
                      lastDate: new DateTime(2000));

                  if (dtpick != null && dtpick != dataInfo) {
                    setState(() {
                      dataInfo = dtpick;
                    });
                  }
                },
                trailing: Text('date'),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(
                  Icons.transit_enterexit,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Observations from Scheduled maintenance",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.compare_arrows,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Replacement Of Shares",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.assignment_turned_in,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Preventive Maintenance Undertaken",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.trending_down,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Breakdown",
                  ),
                ),
              ),
              new ListTile(
                leading: const Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Approval if any expiring",
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
                      if (count == 1) {
                        buttonClick();
                      } else
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
