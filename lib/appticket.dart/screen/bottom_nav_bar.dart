import 'package:app/appticket.dart/screen/search.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'ticket.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedItems = 0;
  static final List<Widget> _wigetItems = <Widget>[
    const HomePage(),
    const SearchPage(),
    const TicketPage(),
    const Text('Person'),
  ];
  
  void change(int index) {
    setState(() {
      selectedItems = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _wigetItems[selectedItems],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItems, // Cho biết item nào được chọn
          type: BottomNavigationBarType.fixed, // cố định item
          onTap: change,
          elevation: 20, // shadow
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          items: const [
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
