part of 'models.dart';

class Diary {
  final String id;
  final String title;
  final String description;
  final DateTime dateTime;

  Diary({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.dateTime,
  });
}
