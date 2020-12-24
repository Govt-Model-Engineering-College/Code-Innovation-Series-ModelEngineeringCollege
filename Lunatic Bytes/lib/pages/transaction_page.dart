part of 'pages.dart';

class TransactionPage extends StatelessWidget {
  static const routeName = '/transaction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: accentColor1,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: defaultMargin,
                      right: defaultMargin,
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/brooke_cagle.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        "Brooke Cagle",
                        style: blackTextFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Pengalaman: 5 tahun",
                        style: whiteTextFont.copyWith(
                          fontSize: 14,
                          color: accentColor4,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Divider(
                      thickness: 1,
                      color: accentColor4,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  generateTransactionList(
                    "Nama:",
                    "Marshal Antonio",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  generateTransactionList(
                    "Paket:",
                    "1 Tahun",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  generateTransactionList(
                    "Tanggal Mulai:",
                    "20 Juli 2020",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  generateTransactionList(
                    "Tanggal Akhir:",
                    "20 Juli 2021",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  generateTransactionList(
                    "Biaya:",
                    "Rp. 6.000.000",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  generateTransactionList(
                    "Pajak:",
                    "Rp. 10.000",
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Divider(
                      thickness: 1,
                      color: accentColor4,
                    ),
                  ),
                  generateTransactionList(
                    "Total:",
                    "Rp. 6.010.000",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  generateTransactionList(
                    "Metode Pembayaran:",
                    "Bank Transfer",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: RaisedButton(
                      child: Text(
                        "BAYAR SEKARANG",
                        style: whiteTextFont.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      color: accentColor2,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(
                            SuccessTransactionPage.routeName);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget generateTransactionList(
    String left,
    String right,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            left,
            style: blackTextFont.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            right,
            style: blackTextFont.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
