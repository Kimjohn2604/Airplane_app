import 'package:app/appticket.dart/styles/app_style.dart';
import 'package:app/appticket.dart/screen/test.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Myapp()
  );
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyTest(),
      debugShowCheckedModeBanner: false,
      title: "Demo",
      theme: ThemeData(
        primaryColor: primary
      ),

    );
  }
}