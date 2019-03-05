import 'package:flutter/material.dart';

class Equipment extends StatefulWidget {
  @override
  _EquipmentState createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {
  int rval = 0;

  void method1(value) {
    setState(() {
      rval = value;
    });
  }

  DateTime dataInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Equipment History"),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new ListTile(
              leading: const Icon(Icons.looks_one),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Eqipment Number",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.looks_two),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Serial No.",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.calendar_today),
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
            ),
            const Divider(
              height: 1.0,
            ),
            new ListTile(
              leading: const Icon(Icons.transit_enterexit),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Observations from Scheduled maintenance",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.compare_arrows),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Replacement Of Shares",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.assignment_turned_in),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Preventive Maintenance Undertaken",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.trending_down),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Breakdown",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(Icons.check_circle),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Approval if any expiring",
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                      child: const Text('Submit'),
                      color: Theme.of(context).accentColor,
                      elevation: 15.0,
                      splashColor: Colors.white70,
                      onPressed: () {
                        //  Scaffold.of(context).showSnackBar(SnackBar(
                        //         content: Text('Show Snackbar'),
                        //         duration: Duration(seconds: 3),
                        //       ));
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                      child: const Text('Cancel'),
                      color: Theme.of(context).accentColor,
                      elevation: 15.0,
                      splashColor: Colors.white70,
                      onPressed: () {
                        
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
