import 'package:app/appticket.dart/styles/app_layout.dart';
import 'package:app/appticket.dart/styles/container_stytles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'styles/app_style.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const TicketView({super.key, required this.ticket});
  //view cua ve
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.8  ,
        height: 190,
        child: Container(
          child: Column(
            children: [
              Container(
                //top
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.only(top: 10),
                decoration:const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: Styles.headlineStyle3,
                        ),
                        const Spacer(), // = Expanded(child: Container())
                        ThickContainer(),
                        Expanded(
                          child: Stack(children: [
                            SizedBox(
                              height: 24, //dcm
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    direction: Axis.horizontal, // hướng của box
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 5)
                                            .floor(),
                                        (index) => Container(
                                              height: 2,
                                              width: 2,
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                            )), //Độ dài của list bên trong box
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5, //hướng đi của icon
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  )),
                            ), /* Icon(Icons.airplane_ticket), */
                          ]),
                        ),
                        ThickContainer(),
                        const Spacer(), // = mainAxisAlignment.center
                        Text(
                          ticket['to']['code'],
                          style: Styles.headlineStyle3,
                        )
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ticket['from']['name'],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "${ticket['flyingtime']}",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          ticket['to']['name'],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                //giua
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 24,
                      width: 15,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      )),
                    ),
                    Expanded(
                        child: SizedBox(
                      height: 24, //dcm
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Flex(
                            direction: Axis.horizontal, // hướng của box
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                (constraints.constrainWidth() / 20).floor(),
                                (index) => Container(
                                      height: 2,
                                      width: 10,
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    )), //Độ dài của list bên trong box
                          );
                        },
                      ),
                    )),
                    const SizedBox(
                      height: 24,
                      width: 15,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      )),
                    ),
                    /* Text("--") */
                  ],
                ),
              ),
              Container(
                //bottom
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 165, 81, 116),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${ticket['date']}",
                          style: Styles.headlineStyle3,
                        ),
                        Text(
                          "Date",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${ticket['departure']}",
                          style: Styles.headlineStyle3,
                        ),
                        Text(
                          "Depature Time",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${ticket['number']}",
                          style: Styles.headlineStyle3,
                        ),
                        Text(
                          "Number",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
