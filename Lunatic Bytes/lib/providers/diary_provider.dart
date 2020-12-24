part of 'providers.dart';

class DiaryProvider with ChangeNotifier {
  List<Diary> _diary = [];

  List<Diary> get diary {
    return [..._diary];
  }

  Diary findById(String id) {
    return _diary.firstWhere((element) => element.id == id);
  }

  void addDiary(Diary diary) {
    final newDiary = Diary(
      id: diary.id,
      title: diary.title,
      description: diary.description,
      dateTime: diary.dateTime,
    );
    _diary.add(newDiary);
    notifyListeners();
  }

  void deleteDiary(String id) {
    _diary.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
