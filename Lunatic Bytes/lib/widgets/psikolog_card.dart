part of 'widgets.dart';

class PsikologCard extends StatelessWidget {
  final String id;
  final String name;
  final String experienceDesc;
  final int experienceYear;
  final AssetImage assetImage;
  final bool isSelected;
  final Function onTap;

  PsikologCard(
    this.id,
    this.name,
    this.experienceDesc,
    this.experienceYear,
    this.assetImage, {
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Card(
        elevation: 2,
        color: (isSelected) ? accentColor2 : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: 250,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: assetImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                name,
                style: blackTextFont.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Ph no.",
                style: blackTextFont.copyWith(
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  experienceDesc,
                  style: blackTextFont.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Experience: ",
                      style: blackTextFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      //text: "${experienceYear.toString()} Years",
                      text : " X Years",
                      style: blackTextFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
