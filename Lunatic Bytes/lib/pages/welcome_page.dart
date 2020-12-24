part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                child: Image.asset(
                  "assets/gif/welcome_onboard.gif",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Glad to\nMeet You!",
                  style: blackTextFont.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   height: 45,
              //   width: double.infinity,
              //   child: SignInButton(
              //     Buttons.Facebook,
              //     text: "Sign Up with Facebook",
              //     onPressed: () {},
              //   ),
              // ),
              // SizedBox(
              //   height: 16,
              // ),
              // Container(
              //   height: 45,
              //   width: double.infinity,
              //   child: SignInButton(
              //     Buttons.Google,
              //     text: "Sign Up with Google",
              //     onPressed: () {},
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Container(
              //         child: Divider(
              //           color: Colors.grey,
              //         ),
              //       ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.symmetric(horizontal: 12),
              //       child: Text(
              //         "OR",
              //         textAlign: TextAlign.center,
              //         style: whiteTextFont.copyWith(
              //           color: Colors.grey,
              //           fontSize: 12,
              //         ),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         child: Divider(
              //           color: Colors.grey,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: SignInButtonBuilder(
                  text: "Sign Up with Email",
                  icon: Icons.email,
                  iconColor: Colors.white,
                  backgroundColor: mainColor,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignUpPage.routeName);
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SignInPage.routeName);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
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
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
