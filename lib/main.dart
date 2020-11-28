import 'package:creators_hub/creator_community/community_card.dart';
import 'package:creators_hub/creator_community/demo_values.dart';
import 'package:flutter/material.dart';
import 'creators_studio.dart';


void main() => runApp(CreatorStudio());
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Creator Studio'),
        ),
        body: new PageView(
          children: [
            new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://cdn.icon-icons.com/icons2/1465/PNG/512/170manartist2_101020.png"))),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Juan The Artist",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/artimg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            //Feed Page
            new Scaffold(
              body: new PageView(
                children: [
                   new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "http://clipart-library.com/new_gallery/209-2099541_crying-baby-comments-crying-baby-icon-png.png"))),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "I'm Just a Beginner",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/eyesimg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
                ],
              ),
            ),

            //Creator Community
            new Scaffold(
                body: ListView.builder(
                    itemCount: DemoValues.posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PostCard(postData: DemoValues.posts[index]);
                    }))
          ],
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.fireplace), title: new Text("Work Trends")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.location_on), title: new Text("Feed")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.people),
              title: new Text("Creator Community"))
        ], onTap: navigationTapped, currentIndex: _page));
  }

  /// call if bttom btn pressed
  void navigationTapped(int page) {
    //page-animate-mo
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
