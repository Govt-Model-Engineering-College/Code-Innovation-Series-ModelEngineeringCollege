part of 'pages.dart';

class DiaryPage extends StatefulWidget {
  @override
  _DiaryPageState createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    final diaryData = Provider.of<DiaryProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 30,
                        ),
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/gif/diary_book.gif",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "List Diary",
                            style: blackTextFont.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${DateFormat.yMMM().format(DateTime.now())}",
                            style: blueTextFont.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      (diaryData.diary.isEmpty)
                          ? Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.5,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200,
                                      width: 300,
                                      child: Image.asset(
                                        "assets/gif/no_diary.gif",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "No Diary!",
                                      style: blackTextFont.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: ListView.builder(
                                // shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: diaryData.diary.length,
                                itemBuilder: (_, index) => DiaryItem(
                                  diaryData.diary[index].id,
                                  diaryData.diary[index].title,
                                  diaryData.diary[index].description,
                                  diaryData.diary[index].dateTime,
                                ),
                              ),
                          ),
                      SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.15,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(NewDiaryPage.routeName);
                    },
                    backgroundColor: mainColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
