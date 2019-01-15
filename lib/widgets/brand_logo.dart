import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset("assets/images/glogo.png", width: 70),
        SizedBox(
          width: 3,
        ),
        Text(
          "News",
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Colors.blueGrey, fontSize: 21),
        )
      ],
    );
  }
}
