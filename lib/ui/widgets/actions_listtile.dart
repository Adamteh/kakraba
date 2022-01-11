import 'package:flutter/material.dart';

class ActionsListTile extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? amount;
  final String? status;

  const ActionsListTile(
      {@required this.title,
      @required this.subTitle,
      @required this.amount,
      this.status,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 4,
      dense: true,
      isThreeLine: true,
      horizontalTitleGap: 33,
      leading: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
          color: title == 'Deposit'
              ? const Color(0xffFFBB00)
              : const Color(0xff3827b4),
        ),
      ),
      title: Text(
        title!,
        style: const TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: 14,
          color: Color(0xff000000),
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.left,
      ),
      subtitle: Text(
        subTitle!,
        style: const TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: 14,
          color: Color(0xffa3a2ac),
        ),
        textAlign: TextAlign.left,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            amount!,
            style: const TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 14,
              color: Color(0xffe61ead),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
          Text(
            status ?? '',
            style: const TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 14,
              color: Color(0xffa3a2ac),
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
