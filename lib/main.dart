import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  ThemeData getAppTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      accentColor: Colors.blueAccent,
      iconTheme: base.iconTheme.copyWith(
        color: Colors.grey
      ),
      textTheme: base.textTheme.copyWith(
        title: base.textTheme.title.apply(
          fontFamily: 'Product Sans'
        )
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    ThemeData theme = getAppTheme();

    return MaterialApp(
      title: 'Google News',
      theme: theme,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
