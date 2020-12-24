part of 'pages.dart';

class SuccessTransactionPage extends StatelessWidget {
  static const routeName = '/success-transaction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Image.asset(
                "assets/gif/success_transaction.gif",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Text(
                "Transaksi Berhasil",
                style: blueTextFont.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
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
                child: Text(
                  "KEMBALI KE HOME",
                  style: whiteTextFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                color: accentColor2,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
