part of 'widgets.dart';

class PodcastThemeCard extends StatelessWidget {
  final Podcast podcast;

  PodcastThemeCard(this.podcast);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        height: 200,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: podcast.imagePodcast,
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: EdgeInsets.all(6),
            child: Text(
              podcast.podcastName,
              style: whiteTextFont.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
