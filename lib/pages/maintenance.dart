import 'package:flutter/material.dart';

class Maintenance extends StatefulWidget {
  @override
  _MaintenanceState createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Maintenance'),
      ),
    );
  }
}