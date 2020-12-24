part of 'pages.dart';

class SignUpPhotoPage extends StatefulWidget {
  static const routeName = '/sign-up-photo';

  @override
  _SignUpPhotoPageState createState() => _SignUpPhotoPageState();
}

class _SignUpPhotoPageState extends State<SignUpPhotoPage> {
  File imageFile;

  Future<File> getImage() async {
    var image =
        // ignore: deprecated_member_use
        await ImagePicker.pickImage(source: ImageSource.gallery);

    return image;
  }

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
                margin: EdgeInsets.only(top: 20, bottom: 70),
                height: 56,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .popAndPushNamed(SignUpPage.routeName);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Upload Photo",
                        textAlign: TextAlign.center,
                        style: blackTextFont.copyWith(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 124,
                width: 110,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: (imageFile == null)
                              ? AssetImage("assets/images/user_pic.png")
                              : FileImage(imageFile),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () async {
                          if (imageFile == null) {
                            imageFile = await getImage();
                          } else {
                            imageFile = null;
                          }

                          setState(() {});
                        },
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(imageFile == null
                                  ? "assets/images/btn_add_photo.png"
                                  : "assets/images/btn_del_photo.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // NOTE: Button
              Container(
                height: 45,
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 70,
                  bottom: 16,
                ),
                child: RaisedButton(
                  child: Text(
                    "Upload",
                    style: (imageFile == null)
                        ? whiteTextFont.copyWith(
                            color: accentColor5,
                            fontSize: 16,
                          )
                        : whiteTextFont.copyWith(fontSize: 16),
                  ),
                  color: (imageFile == null) ? accentColor4 : mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                width: double.infinity,
                height: 45,
                child: FlatButton(
                  child: Text(
                    "Upload Later",
                    style: blueTextFont.copyWith(fontSize: 16),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(
                      width: 1,
                      color: mainColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignUpSucces.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
