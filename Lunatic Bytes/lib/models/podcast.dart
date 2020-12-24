part of 'models.dart';

class Podcast {
  final String id;
  final String podcastName;
  final String creatorName;
  final AssetImage imagePodcast;

  Podcast({
    @required this.id,
    @required this.podcastName,
    @required this.creatorName,
    @required this.imagePodcast,
  });
}
