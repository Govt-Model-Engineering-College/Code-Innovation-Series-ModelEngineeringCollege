part of 'models.dart';

class Community with ChangeNotifier {
  final String id;
  final AssetImage image;
  final String nameCommunity;
  final String textCommunity;
  final int chatUnread;
  final DateTime time;

  Community({
    @required this.id,
    @required this.image,
    @required this.nameCommunity,
    @required this.textCommunity,
    @required this.chatUnread,
    @required this.time,
  });
}

List<Community> dummyCommunity = [
  Community(
    id: "c1",
    image: AssetImage("assets/images/mindful.png"),
    nameCommunity: "Mindful to the Dawn",
    textCommunity: "Anda: Iya, jadi kita harus bisa fokus dulu sih",
    chatUnread: null,
    time: DateTime.now(),
  ),
  Community(
    id: "c2",
    image: AssetImage("assets/images/anxiety.png"),
    nameCommunity: "Anxiety Buster Indonesia",
    textCommunity: "Diva Prasetya: Wkwkwkwk same energy lah",
    chatUnread: 20,
    time: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 6, 30),
  ),
  Community(
    id: "c3",
    image: AssetImage("assets/images/insecurity.png"),
    nameCommunity: "Insecurity Fighter",
    textCommunity: "Steven Quill: Iya nggak sih??",
    chatUnread: 210,
    time: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 5, 50),
  ),
  Community(
    id: "c4",
    image: AssetImage("assets/images/quarter.png"),
    nameCommunity: "Quarter Life Succeed",
    textCommunity: "Aditya Putra: Bisa kok bisa",
    chatUnread: 1235,
    time: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 5, 30),
  ),
  Community(
    id: "c5",
    image: AssetImage("assets/images/addiction.png"),
    nameCommunity: "Addiction Neutralizer",
    textCommunity: "Arnold Roger: Tergantung sih biasanya kak",
    chatUnread: 2635,
    time: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 4, 20),
  ),
];
