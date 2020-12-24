part of 'pages.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/main-page';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: ShiftingTabBar(
          color: Color(0xFF5A81D8),
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          tabs: [
            ShiftingTab(
              icon: Icon(
                Icons.book,
                color: Colors.white,
              ),
              text: "Diary",
            ),
            ShiftingTab(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              text: "Home",
            ),
            ShiftingTab(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              text: "Profile",
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Color(0xFF5A81D8),
            ),
            SafeArea(
              child: Container(
                color: Colors.white,
              ),
            ),
            TabBarView(
              children: <Widget>[
                DiaryPage(),
                HomePage(),
                ProfilePage(),
              ],
            ),
            createCustomBottomNavBar(),
          ],
        ),
      ),
    );
  }

  Widget createCustomBottomNavBar() => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.1,
          margin: EdgeInsets.fromLTRB(
            defaultMargin,
            10,
            defaultMargin,
            MediaQuery.of(context).size.height * 0.03,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFEEEEEE),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(PodcastPage.routeName);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.headset,
                        color: Color(0xFF757575),
                      ),
                      Text(
                        "Podcast",
                        style: TextStyle(
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                   // Navigator.of(context).pushNamed(CommunityPage.routeName);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.people,
                        color: Color(0xFF757575),
                      ),
                      Text(
                        "Community",
                        style: TextStyle(
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushNamed(MeditationListPage.routeName);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/meditation_icon.png",
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        "Meditation",
                        style: TextStyle(
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(PsikologPage.routeName);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/konseling.png",
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        "Counseling",
                        style: TextStyle(
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
