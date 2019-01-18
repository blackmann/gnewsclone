import 'package:flutter/material.dart';
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

    TextStyle _metaStyle = TextStyle(
      fontSize: 12,
      color: Colors.grey,
    );

    TextStyle _metaBoldStyle = _metaStyle.copyWith(fontWeight: FontWeight.bold);

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
                    image: NetworkImage(article.urlToImage), fit: BoxFit.fill),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("For You", style: _metaBoldStyle),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child:
                              Text("∙", style: TextStyle(color: Colors.grey)),
                        ),
                        Expanded(
                          child: Text("26 minutes ago", style: _metaStyle),
                        ),
                        SizedBox(
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Image.asset("assets/icons/coverage.png",
                                width: 20),
                            onPressed: () {},
                          ),
                          width: 40,
                          height: 20,
                        ),
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
                    )
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
