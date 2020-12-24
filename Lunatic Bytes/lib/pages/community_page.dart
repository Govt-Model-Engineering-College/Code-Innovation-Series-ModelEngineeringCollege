part of 'pages.dart';

class CommunityPage extends StatefulWidget {
  static const routeName = '/community';

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor1,
        title: Text("Komunitas"),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (value) {},
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Buat Grup"),
              ),
              PopupMenuItem(
                child: Text("Gabung Grup"),
              ),
              PopupMenuItem(
                child: Text("Profil"),
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              height: 45,
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                bottom: 20,
              ),
              child: TextField(
                controller: searchController,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0,
                    ),
                  ),
                  hintText: "Search...",
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: dummyCommunity
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: ChatItem(
                      e,
                      () {
                        Navigator.of(context).pushNamed(
                          ChatPage.routeName,
                          arguments: e.id,
                        );
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
