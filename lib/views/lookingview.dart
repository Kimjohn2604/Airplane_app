import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LookingView extends StatelessWidget {
  final IconData icons;
  final String text;
  const LookingView({super.key, required this.icons, required this.text});
  // khoi hanh
  // ha canh
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(icons),
          ),
          Text(text),
        ],
      ),
    );
  }
}
