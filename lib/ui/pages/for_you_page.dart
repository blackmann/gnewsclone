import 'package:flutter/material.dart';
import 'package:gnewsclone/ui/widgets/welcome.dart';
import 'package:gnewsclone/ui/widgets/top_story.dart';
import 'package:gnewsclone/ui/widgets/regular_story.dart';

import 'package:gnewsclone/data/models.dart';
import 'package:gnewsclone/data/bloc.dart';

class ForYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    Bloc bloc = Bloc(["google-news"]);
    return ForYouState(bloc);
  }
}

class ForYouState extends State<ForYou> {
  ForYouState(this.bloc);

  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () {},
        child: StreamBuilder(
          stream: bloc.articles.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Article> _articles = List.from(snapshot.data);

              return ListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Welcome(
                    title: "Degreat's briefing",
                    subtitle: "Top 5 stories now",
                  );
                }

                switch(index) {
                  case 1:
                    return TopStory(_articles[0], 1);
                  default:
                    return RegularStory(_articles[index-1], index);
                }
              },
              itemCount: 6,
            );
            } else if (snapshot.hasError) {
              return Text("Failed to load");
            }

            return Text("Loading");
          },
        ));
  }

  @override
  void initState() {
    super.initState();
    bloc.fetchNews();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
}
