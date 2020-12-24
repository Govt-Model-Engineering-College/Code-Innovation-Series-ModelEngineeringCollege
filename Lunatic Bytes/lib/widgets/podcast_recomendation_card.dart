part of 'widgets.dart';

class PodcastRecomendationCard extends StatelessWidget {
  final Podcast podcast;
  final Function onTap;

  PodcastRecomendationCard(
    this.podcast,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        height: 80,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: podcast.imagePodcast,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                podcast.podcastName,
                style: blackTextFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                podcast.creatorName,
                style: blackTextFont.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.play_circle_filled,
                  color: mainColor,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: Container(
                child: Divider(
                  color: accentColor4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
