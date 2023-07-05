
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../styles/app_style.dart';
import '../views/column_of_ticketview.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 18),
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                /* fit: BoxFit.fitWidth, */
                                image:
                                    AssetImage("asset/image/airplaine.png"))),
                        /* Image.asset("asset/image/plane.png")), */
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1.copyWith(fontSize: 25),
                          ),
                          Text(
                            "New-York",
                            style: Styles.headlineStyle3.copyWith(fontSize: 15),
                          ),
                          const Gap(5),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  height: 20,
                                  width: 20,
                                  child: Icon(
                                    Icons.shield_rounded,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Text("Premium Status"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text("Edit"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.lightbulb_circle_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You've got a new award",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      Text("You have 150 flight in the year",
                          style: Styles.headlineStyle4),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Accommulated miles",
                  style: Styles.headlineStyle2,
                )),
            Center(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    "6598362",
                    style: Styles.headlineStyle1.copyWith(fontSize: 40),
                  )),
            ),
            Container(padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Miles accured",style: Styles.headlineStyle3.copyWith(fontSize: 15),),
                  Text("26 July 2023",style: Styles.headlineStyle3.copyWith(fontSize: 15),),
                ],
              ),
            ),
            const ColumnTicket(
              bigTextLeft: "23.042",
              smallTextLeft: "Miles",
              bigTextRight: "VN Airline",
              smallTextRight: "Received from",
              isColor: true,
              jutify: true,
            ),
            const ColumnTicket(
              bigTextLeft: "539",
              smallTextLeft: "Miles",
              bigTextRight: "Expo Airline",
              smallTextRight: "Received from",
              isColor: true,
              jutify: true
            ),
            const ColumnTicket(
              bigTextLeft: "1.139",
              smallTextLeft: "Miles",
              bigTextRight: "Debug Airline",
              smallTextRight: "Received from",
              isColor: true,
              jutify: true
            ),
            Center(child: InkWell(
              onTap: (){},
              child: Text("How to get more miles",style: Styles.textStyle))),
          ],
        )
        );
  }
}
