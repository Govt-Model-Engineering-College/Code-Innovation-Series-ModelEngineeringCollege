part of 'pages.dart';

class FormKonselingPage extends StatefulWidget {
  static const routeName = '/form-konseling';

  @override
  _FormKonselingPageState createState() => _FormKonselingPageState();
}

class _FormKonselingPageState extends State<FormKonselingPage> {
  DateTime _selectedDate;

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2021),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final psikologData = Provider.of<PsikologProvider>(context);
    final paketData = Provider.of<PaketProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Counseling Form"),
        backgroundColor: accentColor1,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 12,
              left: defaultMargin,
              bottom: 20,
            ),
            child: Text(
              "Choose Package",
              style: blackTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: paketData.paketItems.length,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.only(
                    left: (index == 0) ? defaultMargin : 0,
                    right: (index == psikologData.psiItems.length - 1)
                        ? defaultMargin
                        : 16),
                child: PaketCard(
                  paketData.paketItems[index].id,
                  paketData.paketItems[index].title,
                  paketData.paketItems[index].sessionKonseling,
                  paketData.paketItems[index].duration,
                  paketData.paketItems[index].interestTest,
                  paketData.paketItems[index].stressTest,
                  paketData.paketItems[index].psikoterapi,
                  paketData.paketItems[index].price,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 12,
              bottom: 12,
              left: defaultMargin,
            ),
            child: Text(
              "Choose a Psychologist",
              style: blackTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: psikologData.psiItems.length,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.only(
                    left: (index == 0) ? defaultMargin : 0,
                    right: (index == psikologData.psiItems.length - 1)
                        ? defaultMargin
                        : 16),
                child: PsikologCard(
                  psikologData.psiItems[index].id,
                  psikologData.psiItems[index].name,
                  psikologData.psiItems[index].experienceDesc,
                  psikologData.psiItems[index].experienceYear,
                  psikologData.psiItems[index].assetImage,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Determine Your Schedule",
                  style: blackTextFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      (_selectedDate == null)
                          ? "Belum Pilih Tanggal"
                          : "${DateFormat.yMMMMEEEEd().format(_selectedDate)}",
                      style: blueTextFont.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: mainColor,
                      ),
                      onPressed: _presentDatePicker,
                    ),
                  ],
                ),
                Text(
                  "Konfirmasi jadwal akan dikirim ke email kamu",
                  style: blackTextFont.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            height: 45,
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                "PESAN",
                style: whiteTextFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              color: accentColor2,
              onPressed: () {
                Navigator.of(context)
                    .popAndPushNamed(TransactionPage.routeName);
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
