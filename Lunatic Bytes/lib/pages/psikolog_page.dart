part of 'pages.dart';

class PsikologPage extends StatelessWidget {
  static const routeName = '/psikolog-page';

  @override
  Widget build(BuildContext context) {
    final psikologData = Provider.of<PsikologProvider>(context);
    final paketData = Provider.of<PaketProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("psychologist"),
        backgroundColor: accentColor1,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 12,
                  left: defaultMargin,
                  bottom: 20,
                ),
                child: Text(
                  "About Our Psychologists",
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
              SizedBox(
                height: 20,
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: defaultMargin,
              //     bottom: 12,
              //   ),
              //   child: Text(
              //     "Testimoni",
              //     style: blackTextFont.copyWith(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.2,
              //   margin: EdgeInsets.only(
              //     left: defaultMargin,
              //     right: defaultMargin,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       Flexible(
              //         flex: 1,
              //         child: IconButton(
              //           icon: Icon(
              //             Icons.arrow_left,
              //             color: accentColor4,
              //           ),
              //           onPressed: () {},
              //         ),
              //       ),
              //       Flexible(
              //         flex: 10,
              //         child: Card(
              //           elevation: 2,
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(6),
              //           ),
              //           child: Container(
              //             height: MediaQuery.of(context).size.height * 0.2,
              //             width: double.infinity,
              //             padding: EdgeInsets.all(8),
              //             child: Column(
              //               children: <Widget>[
              //                 ListTile(
              //                   leading: Container(
              //                     height: 32,
              //                     width: 32,
              //                     decoration: BoxDecoration(
              //                       shape: BoxShape.circle,
              //                       image: DecorationImage(
              //                         image: AssetImage(
              //                             "assets/images/user_pic.png"),
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                   ),
              //                   title: Text(
              //                     "Anonymous:",
              //                     style: blackTextFont.copyWith(
              //                       fontSize: 16,
              //                       fontWeight: FontWeight.bold,
              //                     ),
              //                   ),
              //                 ),
              //                 Container(
              //                   child: Text(
              //                     "Akhirnya bisa berdamai dengan diri sendiri, walau perlahan tapi pasti. Nasihat dari psikolognya juga relate banget sama kehidupan aku, pokoknya mantaplah!!",
              //                     style: blackTextFont.copyWith(
              //                       fontSize: 12,
              //                       fontWeight: FontWeight.w400,
              //                     ),
              //                     maxLines: 2,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //       Flexible(
              //         flex: 1,
              //         child: IconButton(
              //           icon: Icon(
              //             Icons.arrow_right,
              //             color: accentColor4,
              //           ),
              //           onPressed: () {},
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // // PAKET
              Container(
                margin: EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: defaultMargin,
                ),
                child: Text(
                  "Package",
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
              SizedBox(
                height: 100,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                bottom: 24,
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(6),
              //   border: Border.all(
              //     width: 1,
              //     color: accentColor4,
              //   ),
              //   color: Colors.white,
              // ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: <Widget>[
              //     Text("Yuk ceritain masalah kamu..."),
              //     Container(
              //       height: 40,
              //       width: 120,
              //       child: RaisedButton(
              //         color: accentColor2,
              //         child: Text(
              //           "Mulai Konseling",
              //           style: whiteTextFont.copyWith(
              //             fontSize: 12,
              //           ),
              //         ),
              //         textColor: Colors.white,
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(6),
              //         ),
              //         onPressed: () {
              //           Navigator.of(context)
              //               .pushReplacementNamed(FormKonselingPage.routeName);
              //         },
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
