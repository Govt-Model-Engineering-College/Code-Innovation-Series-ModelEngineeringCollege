part of 'providers.dart';

class PodcastProvider with ChangeNotifier {
  List<Podcast> _dummyPodcast1 = [
    Podcast(
      id: "dp11",
      podcastName: "Sunset",
      creatorName: "Name Dummy",
      imagePodcast: AssetImage("assets/images/sunset.png"),
    ),
    Podcast(
      id: "dp12",
      podcastName: "Rain",
      creatorName: "Name Dummy",
      imagePodcast: AssetImage("assets/images/rain.png"),
    ),
    Podcast(
      id: "dp13",
      podcastName: "Flower",
      creatorName: "Name Dummy",
      imagePodcast: AssetImage("assets/images/flower.png"),
    ),
  ];

  List<Podcast> _dummyPodcast2 = [
    Podcast(
      id: "dp21",
      podcastName: "Senja Menenja",
      creatorName: "Mbak Ella",
      imagePodcast: AssetImage("assets/images/senja_menenja.png"),
    ),
    Podcast(
      id: "dp22",
      podcastName: "Imagining The World",
      creatorName: "Mas Prakoso",
      imagePodcast: AssetImage("assets/images/imagining_the_world.png"),
    ),
    Podcast(
      id: "dp23",
      podcastName: "Kacamatamu Sendiri",
      creatorName: "Sdr. Reyhan",
      imagePodcast: AssetImage("assets/images/kacamatamu.png"),
    ),
    Podcast(
      id: "dp24",
      podcastName: "Ibukota",
      creatorName: "Bpk. Satrio",
      imagePodcast: AssetImage("assets/images/ibukota.png"),
    ),
    Podcast(
      id: "dp25",
      podcastName: "Sendiri, bukan Menyendiri",
      creatorName: "Mas Pras",
      imagePodcast: AssetImage("assets/images/sendiri.png"),
    ),
    Podcast(
      id: "dp26",
      podcastName: "Merayakan Kegagalan",
      creatorName: "Mas Eza",
      imagePodcast: AssetImage("assets/images/sendiri.png"),
    ),
    Podcast(
      id: "dp26",
      podcastName: "Sukses Menggapai Mimpi",
      creatorName: "Kak Andiz",
      imagePodcast: AssetImage("assets/images/ibukota.png"),
    ),
  ];

  List<Podcast> get dummyPodcast1 {
    return [..._dummyPodcast1];
  }

  List<Podcast> get dummyPodcast2 {
    return [..._dummyPodcast2];
  }

  Podcast findById(String id) {
    return _dummyPodcast2.firstWhere((element) => element.id == id);
  }
}
