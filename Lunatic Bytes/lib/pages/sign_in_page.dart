part of 'pages.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/sign-in';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 16),
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Hello\nLets make your day!",
                    textAlign: TextAlign.start,
                    style: blackTextFont.copyWith(fontSize: 20),
                  ),
                ),
                TextFieldController(
                  controller: emailController,
                  labelHint: "Email Address",
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
                  height: 4,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password?",
                    style: blueTextFont.copyWith(fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 8,
                  ),
                  height: 45,
                  width: double.infinity,
                  child: RaisedButton(
                    color: mainColor,
                    child: Text(
                      "Sign In",
                      style: whiteTextFont.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          MoodTrackerPage.routeName, (route) => false);
                      // .pushReplacementNamed(MainPage.routeName);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: whiteTextFont.copyWith(
                            color: accentColor4,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: "Sign Up",
                          style: blueTextFont.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
        //         Row(
        //           children: <Widget>[
        //             Expanded(
        //               child: Container(
        //                 child: Divider(
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               margin: EdgeInsets.symmetric(horizontal: 12),
        //               child: Text(
        //                 "OR",
        //                 textAlign: TextAlign.center,
        //                 style: whiteTextFont.copyWith(
        //                   color: Colors.grey,
        //                   fontSize: 12,
        //                 ),
        //               ),
        //             ),
        //             Expanded(
        //               child: Container(
        //                 child: Divider(
        //                   color: Colors.grey,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 30,
        //         ),
        //         Container(
        //           height: 45,
        //           width: double.infinity,
        //           child: SignInButton(
        //             Buttons.Facebook,
        //             text: "Sign In with Facebook",
        //             onPressed: () {},
        //           ),
        //         ),
        //         SizedBox(
        //           height: 16,
        //         ),
        //         Container(
        //           height: 45,
        //           width: double.infinity,
        //           child: SignInButton(
        //             Buttons.Google,
        //             text: "Sign In with Google",
        //             onPressed: () {},
        //           ),
        //         ),
               ],
             ),
           ),
         ),
      ),
    );
  }
}
