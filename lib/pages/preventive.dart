import 'package:flutter/material.dart';

class Preventive extends StatefulWidget {
  @override
  _PreventiveState createState() => _PreventiveState();
}

class _PreventiveState extends State<Preventive> {
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item1'),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item2'),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item3'),
      value: 3,
    ));
  }


// 1.Attend immediately talking required power bank
// 2.Attend in Next available power block
// 3.Attend during next scheduled maintenance


  @override
  Widget build(BuildContext context) {
    loadData();
    var listDrop2 = listDrop;
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Preventive Maintenance'),
      ),
      body: Center(
              child: new Container(
          child: new DropdownButton(
            items: listDrop2,
            onChanged: null,
          ),
        ),
      ),
    );
  }
}
