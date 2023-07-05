import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_style.dart';

class ContainerText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const ContainerText(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(onTap: () {}, child: Text(smallText)),
      ],
    );
  }
}
