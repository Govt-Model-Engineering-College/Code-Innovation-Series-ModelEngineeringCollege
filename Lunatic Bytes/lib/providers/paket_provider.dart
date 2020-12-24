part of 'providers.dart';

class PaketProvider with ChangeNotifier {
  List<Paket> _paketItems = [
    Paket(
      id: "pk1",
      title: "Package 1",
      sessionKonseling: 1,
      duration: 75,
      interestTest: "Tes Minat Bakat",
      stressTest: "Tes Tingkat Stress",
      psikoterapi: "",
      price: "Cost",
    ),
    Paket(
      id: "pk2",
      title: "Package 2",
      sessionKonseling: 1,
      duration: 75,
      interestTest: "Tes Minat Bakat",
      stressTest: "Tes Tingkat Stress",
      psikoterapi: "Psikoterapi",
      price: "Cost",
    ),
    Paket(
      id: "pk3",
      title: "Package 3",
      sessionKonseling: 7,
      duration: 75,
      interestTest: "Tes Minat Bakat",
      stressTest: "Tes Tingkat Stress",
      psikoterapi: "Psikoterapi",
      price: "Cost",
    ),
  ];

  List<Paket> get paketItems {
    return [..._paketItems];
  }

  Paket findById(String id) {
    return _paketItems.firstWhere((element) => element.id == id);
  }
}
