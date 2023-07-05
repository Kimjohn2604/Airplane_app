import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedTab extends StatelessWidget {
  final String titleLeft ;
  final String titleRight ;
  const SelectedTab({super.key, required this.titleLeft, required this.titleRight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  color: Colors.white),
              child: Center(child: Text(titleLeft))),
          Container(
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: Colors.grey.shade400),
              child: Center(child: Text(titleRight))),
        ],
      ),
    );
  }
}
