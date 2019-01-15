import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: null, // 1
          title: null, // 2
          actions: <Widget>[], // 3
        ),
      );
    }
}