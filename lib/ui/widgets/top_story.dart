import 'package:flutter/material.dart';
import 'package:gnewsclone/ui/widgets/story_extra.dart';
import 'package:gnewsclone/data/models.dart';

class TopStory extends StatelessWidget {
  TopStory(this.article, this.position);

  final Article article;
  final int position;

  @override
  Widget build(BuildContext context) {
    SizedBox _verticalSpacing = const SizedBox(height: 8);
    TextStyle _numberStyle = TextStyle(
        fontSize: 14,
        fontFamily: 'Product Sans',
        color: Theme.of(context).accentColor,
        fontWeight: FontWeight.w600);

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
          _verticalSpacing,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("$position.", style: _numberStyle),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(article.source.name),
                    _verticalSpacing,
                    Text(
                      article.title,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontSize: 22),
                    ),
                    _verticalSpacing,
                    StoryExtra(
                      leading: "For you",
                      timeAgo: article.timePast,
                      hasCoverage: true,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
