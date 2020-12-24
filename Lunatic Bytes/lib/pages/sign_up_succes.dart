part of 'pages.dart';

class SignUpSucces extends StatelessWidget {
  static const routeName = '/sign-up-succes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 90),
                height: 56,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .popAndPushNamed(SignUpPhotoPage.routeName);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Confirm Account",
                        textAlign: TextAlign.center,
                        style: blackTextFont.copyWith(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/user_pic.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 90,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Welcome",
                      textAlign: TextAlign.center,
                      style: blackTextFont.copyWith(
                        fontSize: 20,
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Friend",
                      textAlign: TextAlign.center,
                      style: blackTextFont.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    "Create My Account",
                    style: whiteTextFont.copyWith(fontSize: 16),
                  ),
                  color: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
