import 'package:flutter/material.dart';

import '../styles/app_style.dart';

class ColumnTicket extends StatelessWidget {
  final String bigTextLeft;
  final String smallTextLeft;
  final String bigTextRight;
  final String smallTextRight;
  final bool? isColor;
  final bool? jutify;
  const ColumnTicket(
      {super.key,
      required this.smallTextRight,
      required this.smallTextLeft,
      required this.bigTextLeft,
      required this.bigTextRight,
      required this.isColor,
      required this.jutify});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration:
          BoxDecoration(color: isColor == null ? Colors.white : Styles.bgColor),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: jutify == null ? 15 : 30, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bigTextLeft,
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.black54),
                    ),
                    Text(
                      smallTextLeft,
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      bigTextRight,
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.black54),
                    ),
                    Text(
                      smallTextRight,
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
