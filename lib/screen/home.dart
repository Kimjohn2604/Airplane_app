
import 'package:flutter/material.dart';

import '../app_info.dart';
import '../styles/app_style.dart';
import '../styles/column.dart';
import '../views/hotel_view.dart';
import '../views/ticket_view.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // để không bị canh giữa do Row
                    children: [
                      Text(
                        "Good morning",
                        style: Styles.headlineStyle3,
                      ),
                      Text(
                        "Wellcome to TrọngBook",
                        style: Styles.headlineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("asset/image/airplaine.png"))),
                    /* Image.asset("asset/image/plane.png")), */
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100),
                child: const Row(
                  children: [
                    Icon(Icons.search),
                    Text("Search"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ContainerText(
                  bigText: "Upcoming flight", smallText: "View All")
            ]),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList
                    .map((singleticket) => TicketView(
                          ticket: singleticket,
                        ))
                    .toList(),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const ContainerText(bigText: "Hotels", smallText: "View All"),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map((singlehotel) => HotelView(hotel: singlehotel))
                          .toList(),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
