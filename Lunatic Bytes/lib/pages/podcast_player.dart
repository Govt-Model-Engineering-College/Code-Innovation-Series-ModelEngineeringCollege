part of 'pages.dart';

class PodcastPlayerPage extends StatelessWidget {
  static const routeName = '/podcast-player';

  @override
  Widget build(BuildContext context) {
    final podcastId = ModalRoute.of(context).settings.arguments as String;
    final loadedPodcast = Provider.of<PodcastProvider>(context, listen: false)
        .findById(podcastId);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/background_podcast_player.png",
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: defaultMargin,
                            top: 20,
                            bottom: 60,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: loadedPodcast.imagePodcast,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, bottom: 8),
                      child: Text(
                        loadedPodcast.podcastName,
                        style: whiteTextFont.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Text(
                        loadedPodcast.creatorName,
                        style: whiteTextFont.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.fast_rewind,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.fast_forward,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: defaultMargin,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "10:56",
                          style: whiteTextFont.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 12,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 4,
                            width: double.infinity,
                            color: Color(0xFFC4C4C4),
                          ),
                          Container(
                            height: 4,
                            width: MediaQuery.of(context).size.width * 0.3,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
