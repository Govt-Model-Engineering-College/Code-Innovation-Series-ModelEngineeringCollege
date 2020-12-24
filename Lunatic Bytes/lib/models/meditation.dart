part of 'models.dart';

class Meditation {
  final String id;
  final AssetImage assetImage;
  final String title;
  final String session;
  final Color color;
  final String titleSession1;
  final String subTitleSession1;
  final String titleSession2;
  final String subTitleSession2;

  Meditation({
    @required this.id,
    @required this.assetImage,
    @required this.title,
    @required this.session,
    @required this.color,
    @required this.titleSession1,
    @required this.subTitleSession1,
    @required this.titleSession2,
    @required this.subTitleSession2,
  });
}
