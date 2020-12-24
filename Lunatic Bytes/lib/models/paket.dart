part of 'models.dart';

class Paket {
  final String id;
  final String title;
  final int sessionKonseling;
  final int duration;
  final String interestTest;
  final String stressTest;
  final String psikoterapi;
  final String price;

  Paket({
    @required this.id,
    @required this.title,
    @required this.sessionKonseling,
    @required this.duration,
    @required this.interestTest,
    @required this.stressTest,
    @required this.psikoterapi,
    @required this.price,
  });
}
