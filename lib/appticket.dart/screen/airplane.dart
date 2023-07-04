import 'package:app/appticket.dart/app_info.dart';
import 'package:flutter/cupertino.dart';

import '../styles/app_style.dart';
import '../styles/slectedtab.dart';
import '../views/ticket_view.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tickets",
                style: Styles.headlineStyle1.copyWith(fontSize: 30),
              ),
              FittedBox(
                  child: SelectedTab(
                titleLeft: "Đang cập nhật",
                titleRight: "Trước đó",
              )),
              Container(
                child: TicketView(ticket: ticketList[0],)
              )
            ],
          ),
        ),
      ],
    );
  }
}
