import 'package:flutter/material.dart';
import 'package:gnewsclone/widgets/welcome.dart';

class ForYou extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Welcome(
            title: "Degreat's briefing",
            subtitle: "Top 5 stories now",
          ),
        ],
      );
    }
}