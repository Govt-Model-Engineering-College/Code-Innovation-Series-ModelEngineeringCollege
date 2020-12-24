part of 'widgets.dart';

class DiaryItem extends StatelessWidget {
  final String id;
  final String title;
  final String subTitle;
  final DateTime dateTime;

  DiaryItem(
    this.id,
    this.title,
    this.subTitle,
    this.dateTime,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: FittedBox(
              child: Text("${DateFormat.MMMd().format(dateTime)}"),
            ),
          ),
        ),
        title: Text(
          title,
          style: blackTextFont.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: blackTextFont.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
