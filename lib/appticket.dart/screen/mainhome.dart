import 'package:app/appticket.dart/styles/app_style.dart';
import 'package:app/appticket.dart/screen/bottom_nav_bar.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const Myapp()
  );
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const BottomNavbar(),
      debugShowCheckedModeBanner: false,
      title: "Demo",
      theme: ThemeData(
        primaryColor: primary
      ),

    );
  }
}