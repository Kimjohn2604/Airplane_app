import 'package:app/appticket.dart/app_info.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_style.dart';
import '../styles/slectedtab.dart';
import '../views/column_of_ticketview.dart';
import '../views/ticket_view.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
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
                const FittedBox(
                    child: SelectedTab(
                  titleLeft: "Đang cập nhật",
                  titleRight: "Trước đó",
                )),
                Center(
                  child: Column(
                    children: [
                      TicketView(
                        ticket: ticketList[0],
                        isColor: true,
                      ),
                      const ColumnTicket(
                        bigTextLeft: "Đức Trọng",
                        smallTextLeft: "passenger",
                        bigTextRight: "0903-576208",
                        smallTextRight: "Passport",
                        isColor: null,
                        jutify: null,
                      ),
                      const ColumnTicket(
                          bigTextLeft: "220156984596",
                          smallTextLeft: "Number of Tiecket",
                          bigTextRight: "A24C94JK",
                          smallTextRight: "Booking Code",
                          isColor: null,
                          jutify: null),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        margin: EdgeInsets.only(top: 2),
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 4),
                                                child: Image.asset(
                                                  "asset/image/visa.jpg",
                                                  scale: 4,
                                                ),
                                              ),
                                              Text(
                                                "2604****",
                                                style: Styles.headlineStyle3
                                                    .copyWith(
                                                        color: Colors.black54),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Payment-Method",
                                            style: TextStyle(
                                                color: Colors.grey.shade500),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "\$49.99",
                                            style: Styles.headlineStyle3
                                                .copyWith(color: Colors.black54),
                                          ),
                                          Text(
                                            "Price",
                                            style: TextStyle(
                                                color: Colors.grey.shade500),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(color: Colors.white),
                              child: BarcodeWidget(
                                barcode: Barcode.code128(),
                                data:
                                    "https://github.com/Kimjohn2604/Airplane_app",
                                drawText: false,
                                width: double.infinity,
                                color: Styles.textColor,
                                height: 70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TicketView(
                        ticket: ticketList[0],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
