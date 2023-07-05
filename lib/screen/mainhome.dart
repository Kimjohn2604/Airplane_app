
import 'package:app/screen/test.dart';
import 'package:flutter/material.dart';

import '../styles/app_style.dart';


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