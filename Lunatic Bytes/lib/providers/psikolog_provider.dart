part of 'providers.dart';

class PsikologProvider with ChangeNotifier {
  List<Psikolog> _psiItems = [
    Psikolog(
      id: "p1",
      name: "XYZ 1",
      experienceDesc:
          "Information",
      experienceYear: 3,
      assetImage: AssetImage("assets/images/user_pic.png"),
    ),
    Psikolog(
      id: "p2",
      name: "XYZ 2",
      experienceDesc: "Information",
      experienceYear: 3,
      assetImage: AssetImage("assets/images/user_pic.png"),
    ),
    Psikolog(
      id: "p3",
      name: "XYZ 3",
      experienceDesc:
          "Information",
      experienceYear: 3,
      assetImage: AssetImage("assets/images/user_pic.png"),
    ),
  ];

  List<Psikolog> get psiItems {
    return [..._psiItems];
  }

  Psikolog findById(String id) {
    return _psiItems.firstWhere((element) => element.id == id);
  }
}
