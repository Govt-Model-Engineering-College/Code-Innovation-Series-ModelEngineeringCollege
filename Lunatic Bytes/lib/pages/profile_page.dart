part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            right: defaultMargin,
            left: defaultMargin,
            top: 12,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          "assets/images/user_pic.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "User Name",
                        style: blackTextFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "User E-Mail id",
                        style: blackTextFont.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                menuProfile(
                  () {},
                  Icon(
                    Icons.person,
                    color: mainColor,
                    size: 24,
                  ),
                  "Edit Profile",
                ),
                SizedBox(
                  height: 16,
                ),
                menuProfile(
                  () {},
                  Icon(
                    Icons.settings,
                    color: mainColor,
                    size: 24,
                  ),
                  "Settings",
                ),
                SizedBox(
                  height: 16,
                ),
                menuProfile(
                  () {},
                  Image.asset(
                    "assets/images/feedback.png",
                    fit: BoxFit.cover,
                    height: 26,
                    width: 26,
                  ),
                  "Give Feedback",
                ),
                SizedBox(
                  height: 16,
                ),
                menuProfile(
                  () {},
                  Image.asset(
                    "assets/images/sign_out.png",
                    fit: BoxFit.cover,
                    height: 24,
                    width: 24,
                  ),
                  "Logout",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuProfile(
    Function onTap,
    Widget widget,
    String text,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: widget,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  text,
                  style: blackTextFont.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFFBEBEBE),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
