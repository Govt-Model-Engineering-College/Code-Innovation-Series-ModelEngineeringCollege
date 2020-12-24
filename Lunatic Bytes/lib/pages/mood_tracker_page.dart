part of 'pages.dart';

class MoodTrackerPage extends StatefulWidget {
  static const routeName = '/mood-tracker';

  @override
  _MoodTrackerPageState createState() => _MoodTrackerPageState();
}

class _MoodTrackerPageState extends State<MoodTrackerPage> {
  int tracker = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor1,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 40,
              ),
              child: Text(
                "Come on tell us,\nHow happy are you?",
                textAlign: TextAlign.center,
                style: whiteTextFont.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(
                bottom: 30,
              ),
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(),
                onChange: (value) {
                  tracker = value.toInt();
                },
                initialValue: 10,
                min: 10,
                max: 100,
                innerWidget: (v) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text(
                      "${v.toInt()} %",
                      style: whiteTextFont.copyWith(
                        fontSize: 20,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Write down your thoughts",                        //   "Curahkan hatimu",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                textInputAction: TextInputAction.newline,
                onFieldSubmitted: (_) {},
                keyboardType: TextInputType.multiline,
                onSaved: (_) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return "Sure you dont want to fill it out?";
                  }
                  return null;
                },
                maxLines: 5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: RaisedButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Submit",
                  style: whiteTextFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                color: accentColor2,
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      MainPage.routeName, (route) => false);
                },
              ),
            ),
            SizedBox(
              height: 12,
            ),
            FlatButton(
              child: Text(
                "Skip It",
                style: whiteTextFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    MainPage.routeName, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
