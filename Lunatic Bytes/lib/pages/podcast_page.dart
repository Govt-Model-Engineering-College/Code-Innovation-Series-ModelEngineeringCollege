part of 'pages.dart';

class PodcastPage extends StatelessWidget {
  static const routeName = '/podcast';

  @override
  Widget build(BuildContext context) {
    final podcastData = Provider.of<PodcastProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Podcast"),
        backgroundColor: accentColor1,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              top: 20,
            ),
            child: Text(
              "Podcast theme",
              style: blackTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.only(
              left: defaultMargin,
              top: 8,
              bottom: 20,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: podcastData.dummyPodcast1.length,
              itemBuilder: (_, index) => PodcastThemeCard(
                podcastData.dummyPodcast1[index],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              bottom: 8,
            ),
            child: Text(
              "Podcast Recommendations",
              style: blackTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Column(
          //   children: podcastData.dummyPodcast2
          //       .map(
          //         (e) => Padding(
          //           padding: EdgeInsets.fromLTRB(
          //             defaultMargin,
          //             0,
          //             defaultMargin,
          //             20,
          //           ),
          //           child: PodcastRecomendationCard(
          //             e,
          //             () {
          //               Navigator.of(context).pushNamed(
          //                 PodcastPlayerPage.routeName,
          //                 arguments: e.id,
          //               );
          //             },
          //           ),
          //         ),
          //       )
          //       .toList(),
          // ),
        ],
      ),
    );
  }
}
