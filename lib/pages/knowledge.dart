import 'package:flutter/material.dart';

class Knowledge extends StatefulWidget {
  @override
  _KnowledgeState createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Knowledge'),
      ),
    );
  }
}