part of 'pages.dart';

class MeditationPage extends StatelessWidget {
  static const routeName = '/meditation-page';

  @override
  Widget build(BuildContext context) {
    final meditationId = ModalRoute.of(context).settings.arguments as String;
    final loadedMeditation = Provider.of<MeditationProvider>(
      context,
      listen: false,
    ).findById(meditationId);
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: loadedMeditation.assetImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 12,
                      left: defaultMargin,
                      right: defaultMargin,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            loadedMeditation.title,
                            style: whiteTextFont.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  children: <Widget>[
                    SessionMeditationWidget(
                      loadedMeditation.color,
                      Text(
                        "1",
                        style: whiteTextFont.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      loadedMeditation.titleSession1,
                      loadedMeditation.subTitleSession1,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SessionMeditationWidget(
                      accentColor4,
                      Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      loadedMeditation.titleSession2,
                      loadedMeditation.subTitleSession2,
                    ),
                  ],
                ),
              ),
              // loadedMeditation.id != meditationId
              //     ? Text(loadedMeditation.title)
              //     : Text(loadedMeditation.title),
            ],
          ),
        ],
      ),
    );
  }
}
