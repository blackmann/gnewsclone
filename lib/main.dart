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
      splashColor: Colors.blueAccent.withAlpha(40),
      iconTheme: base.iconTheme.copyWith(
        color: Colors.grey
      ),
      textTheme: base.textTheme.copyWith(
        title: base.textTheme.title.copyWith(
          fontFamily: 'Product Sans',
          fontWeight: FontWeight.w600
        ),
        subtitle: base.textTheme.subtitle.copyWith(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
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
