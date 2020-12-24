part of 'widgets.dart';

class BannerPodcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              "assets/images/people_with_plane.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ada rekomendasi podcast nih\nbuat kamu yang lagi menghadapi\nQuarter Life Crisis nih yuk\nlangsung klik aja...",
                style: whiteTextFont.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    child: Icon(
                      Icons.play_circle_filled,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Survive Quarter Life Crisis with Kak Dimas",
                    style: whiteTextFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
