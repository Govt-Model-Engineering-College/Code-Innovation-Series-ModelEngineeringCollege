part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/sign-up';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController anonymousController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .popAndPushNamed(WelcomePage.routeName);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Create New Account",
                          textAlign: TextAlign.center,
                          style: blackTextFont.copyWith(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                TextFieldController(
                  controller: nameController,
                  labelHint: "Full Name",
                  obsecure: false,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFieldController(
                  controller: anonymousController,
                  labelHint: "Alias Name",
                  obsecure: false,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFieldController(
                  controller: emailController,
                  labelHint: "Contact Address",
                  obsecure: false,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFieldController(
                  controller: passwordController,
                  labelHint: "Password",
                  obsecure: true,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFieldController(
                  controller: rePasswordController,
                  labelHint: "Confirm Password",
                  obsecure: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      "Sign Up",
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(SignUpPhotoPage.routeName);
                    },
                    color: mainColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: whiteTextFont.copyWith(
                          color: accentColor4,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: "Sign In",
                        style: blueTextFont.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
