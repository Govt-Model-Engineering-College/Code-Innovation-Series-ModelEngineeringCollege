part of 'widgets.dart';

class MeditationCard extends StatelessWidget {
  final String id;
  final String title;
  final String session;
  final AssetImage image;
  final Function onTap;

  MeditationCard(
    this.id,
    this.title,
    this.session,
    this.image,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: blackTextFont.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            session,
            style: blackTextFont.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
