part of 'widgets.dart';

class ChatItem extends StatelessWidget {
  final Community community;
  final Function onTap;

  ChatItem(
    this.community,
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
      child: Container(
        height: 80,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: community.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                community.nameCommunity,
                style: blackTextFont.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                community.textCommunity,
                style: blackTextFont.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                "${DateFormat.Hm().format(community.time)}",
                style: blackTextFont.copyWith(fontSize: 12),
              ),
            ),
            Expanded(
              child: Container(
                child: Divider(
                  color: accentColor4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
