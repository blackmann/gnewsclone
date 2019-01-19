import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gnewsclone/ui/widgets/story_extra.dart';
import 'package:gnewsclone/data/models.dart';

class RegularStory extends StatelessWidget {
  RegularStory(this.article, this.position);

  final Article article;
  final int position;

  @override
  Widget build(BuildContext context) {
    TextStyle _numberStyle = TextStyle(
        fontSize: 14,
        fontFamily: 'Product Sans',
        color: Theme.of(context).accentColor,
        fontWeight: FontWeight.w600);

    SizedBox _verticalSpacing = SizedBox(
      height: 8,
    );

    SizedBox _horizontalSpacing = SizedBox(
      width: 8,
    );

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("$position.", style: _numberStyle),
          _horizontalSpacing,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(article.source.name),
                _verticalSpacing,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        article.title,
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontSize: 17),
                      ),
                    ),
                    _horizontalSpacing,
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          image: DecorationImage(
                              image: NetworkImage(article.urlToImage),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                _verticalSpacing,
                StoryExtra(
                  leading: "For You",
                  timeAgo: article.timePast,
                  hasCoverage: Random(article.publishedAt.millisecondsSinceEpoch).nextBool(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
