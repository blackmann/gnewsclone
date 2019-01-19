import 'package:flutter/material.dart';

class StoryExtra extends StatelessWidget {

  StoryExtra({this.leading, this.timeAgo, this.hasCoverage});

  final String leading;
  final String timeAgo;
  final bool hasCoverage;

  @override
  Widget build(BuildContext context) {
    TextStyle _metaStyle = TextStyle(
      fontSize: 12,
      color: Colors.grey,
    );

    TextStyle _metaBoldStyle = _metaStyle.copyWith(fontWeight: FontWeight.bold);

    Container _empty = Container();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        leading != null ? Text("$leading ∙ ", style: _metaBoldStyle) : _empty,
        Expanded(
          child: timeAgo != null ? Text(timeAgo, style: _metaStyle) : _empty,
        ),
        hasCoverage ? SizedBox(
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Image.asset("assets/icons/coverage.png", width: 20),
            onPressed: () {},
          ),
          width: 40,
          height: 20,
        ) : _empty,
        SizedBox(
          child: IconButton(
            icon: Icon(Icons.more_vert, color: Colors.grey),
            onPressed: () {},
            iconSize: 20,
            padding: EdgeInsets.all(0),
          ),
          width: 20,
          height: 20,
        )
      ],
    );
  }
}
