part of 'widgets.dart';

class SessionMeditationWidget extends StatelessWidget {
  final Color colorBox;
  final Widget fillBox;
  final String session;
  final String subSession;

  SessionMeditationWidget(
    this.colorBox,
    this.fillBox,
    this.session,
    this.subSession,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      child: ListTile(
        leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: colorBox,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Align(
            alignment: Alignment.center,
            child: fillBox,
          ),
        ),
        title: Text(
          session,
          style: blackTextFont.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          subSession,
          style: blackTextFont.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
