import 'package:flutter/material.dart';
import 'package:gnewsclone/widgets/circle_image.dart';
import 'package:gnewsclone/pages/for_you_page.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final String profileImage =
      "https://www.gravatar.com/avatar/853a4092fdf3d8d3ed0ebd6b16aeff9f?s=80";

  int currentTab = 0;

  void setCurrentTab(int tab) {
    setState(() {
      currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData baseTheme = Theme.of(context);

    Color activeColor = baseTheme.accentColor;

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
          title: Image.asset("assets/images/glogo.png", height: 25,),
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
        bottomNavigationBar: Theme(
          data: baseTheme.copyWith(
              textTheme: baseTheme.textTheme.apply(fontFamily: 'Product Sans')),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: baseTheme.accentColor,
            currentIndex: currentTab,
            onTap: (tab) {
              setCurrentTab(tab);
            },
            items: [
              BottomNavigationBarItem(
                  title: Text("For You"),
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(
                    Icons.person_outline,
                    color: activeColor,
                  )),
              BottomNavigationBarItem(
                  title: Text("Headlines"),
                  icon: Icon(Icons.public),
                  activeIcon: Icon(
                    Icons.public,
                    color: activeColor,
                  )),
              BottomNavigationBarItem(
                  title: Text("Favorites"),
                  icon: Icon(Icons.star_border),
                  activeIcon: Icon(
                    Icons.star_border,
                    color: activeColor,
                  )),
              BottomNavigationBarItem(
                  title: Text("Newsstand"),
                  icon: Icon(Icons.library_books),
                  activeIcon: Icon(
                    Icons.library_books,
                    color: activeColor,
                  ))
            ],
          ),
        ),
        body: ForYou(),
        );
  }
}
