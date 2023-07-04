import 'package:app/appticket.dart/screen/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ticket.dart';
import 'home.dart';

class MyTest extends StatefulWidget {
  MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  int SelectedItems = 0;
  void Change(int index) {
    setState(() {
      SelectedItems = index;
    });
  }

  static final List<Widget> _wigetItems = <Widget>[
    const MyhomePage(),
    const SearchPage(),
    const TicketPage(),
    const Text('Person'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _wigetItems[SelectedItems],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: SelectedItems, // Cho biết item nào được chọn
          type: BottomNavigationBarType.fixed, // cố định item
          onTap: Change,
          elevation: 20, // shadow
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Action'),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket), label: 'Airplane'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person')
          ]),
      /* body: Container(
        child: ListView.builder(itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.of(context).push(snap[index].id);
            },
            child: Container(
              child: Text("ticket 1 "),
            ),
          );
        }),
      ) */
    );
  }
}


