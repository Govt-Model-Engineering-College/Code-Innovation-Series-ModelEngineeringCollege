part of 'widgets.dart';

class PaketCard extends StatelessWidget {
  final String id;
  final String title;
  final int sessionKonseling;
  final int duration;
  final String interestTest;
  final String stressTest;
  final String psikoterapi;
  final String price;

  PaketCard(
    this.id,
    this.title,
    this.sessionKonseling,
    this.duration,
    this.interestTest,
    this.stressTest,
    this.psikoterapi,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        height: 180,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              title,
              style: blueTextFont.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text("$sessionKonseling x sesi konseling"),
            // Text("Durasi $duration menit"),
            // Text(interestTest),
            // Text(stressTest),
            // Text(psikoterapi),
            Text("info"),
            SizedBox(
              height: 4,
            ),
            Text(
              " $price : Rs 0.0",
              style: blueTextFont.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
