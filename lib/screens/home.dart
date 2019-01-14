import 'package:flutter/material.dart';
import 'package:gnewsclone/widgets/circle_image.dart';

class Home extends StatelessWidget {
  final String profileImage =
      "https://www.gravatar.com/avatar/853a4092fdf3d8d3ed0ebd6b16aeff9f?s=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/glogo.png", width: 70),
            SizedBox(
              width: 5,
            ),
            Text(
              "News",
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.blueGrey),
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 24, 10),
            child: CircleImage(
              NetworkImage(profileImage),
              radius: 13,
            ),
          )
        ],
      ),
    );
  }
}
