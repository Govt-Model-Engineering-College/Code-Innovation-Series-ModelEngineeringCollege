part of 'providers.dart';

class MeditationProvider with ChangeNotifier {
  List<Meditation> _medItems = [
    Meditation(
      id: "m1",
      assetImage: AssetImage("assets/images/m1.png"),
      title: "Fight Stress",
      session: "2 Sessions",
      color: Color(0xFFFF5934),
      titleSession1: "Introduction",
      subTitleSession1: "Let's start taking steps to fight your stress.",
      titleSession2: "Make peace with yourself",
      subTitleSession2:
          "Stress is a part of us, for that we have to make peace with ourselves.",
    ),
    Meditation(
      id: "m2",
      assetImage: AssetImage("assets/images/m2.png"),
      title: "Filling Loneliness",
      session: "2 Sessions",
      color: Color(0xFF3464FF),
      titleSession1: "Introduction",
      subTitleSession1: "Let's start taking steps so as not to be lonely.",
      titleSession2: "Make peace with yourself",
      subTitleSession2:
          "Stress is a part of us, for that we have to make peace with ourselves.",
    ),
    Meditation(
      id: "m3",
      assetImage: AssetImage("assets/images/m3.png"),
      title: "Overcoming Anxiety",
      session: "2 Sessions",
      color: Color(0xFF219653),
      titleSession1: "Introduction",
      subTitleSession1: "Get to know yourself before you fight your fears.",
      titleSession2: "Make peace with yourself",
      subTitleSession2:
          "Fear is a part of us, so we have to make peace with ourselves.",
    ),
    // Meditation(
    //   id: "m4",
    //   assetImage: AssetImage("assets/images/m4.png"),
    //   title: "Face Burnout",
    //   session: "2 Sessions",
    //   color: Color(0xFFA243C6),
    //   titleSession1: "Introduction",
    //   subTitleSession1:
    //       "You've been doing your best, let's calm down for a moment.",
    //   titleSession2: "Peace of mind",
    //   subTitleSession2:
    //       "Failure to achieve your work targets is a common thing, let's make peace with your own heart.",
    // ),
    // Meditation(
    //   id: "m5",
    //   assetImage: AssetImage("assets/images/m5.png"),
    //   title: "Sounds of nature",
    //   session: "2 Sessions",
    //   color: Color(0xFF3464FF),
    //   titleSession1: "Rain sound",
    //   subTitleSession1: "The sound of raindrops to accompany your meditation.",
    //   titleSession2: "Waterfall sound",
    //   subTitleSession2: "The sounds of nature can always calm us down.",
    // ),
  ];

  List<Meditation> get medItems {
    return [..._medItems];
  }

  Meditation findById(String id) {
    return _medItems.firstWhere((element) => element.id == id);
  }
}
