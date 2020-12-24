part of 'models.dart';

class Psikolog {
  final String id;
  final String name;
  final String experienceDesc;
  final int experienceYear;
  final AssetImage assetImage;

  Psikolog({
    @required this.id,
    @required this.name,
    @required this.experienceDesc,
    @required this.experienceYear,
    @required this.assetImage,
  });
}
