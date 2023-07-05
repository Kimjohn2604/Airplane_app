
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/app_layout.dart';
import '../styles/app_style.dart';
import '../styles/container_stytles.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});
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
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: isColor ==null ? Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: Styles.headlineStyle3.copyWith(color: isColor ==null ? Colors.white :Colors.black54),
                        ),
                        const Spacer(), // = Expanded(child: Container())
                        ThickContainer(isColor: true ,),
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
                                        (constraints.constrainWidth() / 7)
                                            .floor(),
                                        (index) => Container(
                                              height: 2,
                                              width: 2,
                                              decoration: BoxDecoration(
                                                  color: isColor ==null ? Colors.white :Colors.blue.shade100),
                                            )), //Độ dài của list bên trong box
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5, //hướng đi của icon
                                  child:  Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor ==null ? Colors.white :Colors.blue.shade300,
                                  )),
                            ), /* Icon(Icons.airplane_ticket), */
                          ]),
                        ),
                        ThickContainer(isColor: true,),
                        const Spacer(), // = mainAxisAlignment.center
                        Text(
                          ticket['to']['code'],
                          style: Styles.headlineStyle3.copyWith(color: isColor ==null ? Colors.white :Colors.black54),
                        )
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ticket['from']['name'],
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        Text(
                          "${ticket['flyingtime']}",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        Text(
                          ticket['to']['name'],
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                //giua
                color: isColor ==null ? Colors.orange :Colors.white,
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
                      /* height: 24, */ //dcm
                      child: LayoutBuilder(// đường gạch ngang
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
                                          BoxDecoration(color: isColor ==null ? Colors.white :Colors.grey.shade400),
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
                decoration: BoxDecoration(
                  color: isColor ==null ? Color.fromARGB(255, 165, 81, 116):Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null?15:0), bottomRight: Radius.circular(isColor == null?15:0)
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${ticket['date']}",
                          style: Styles.headlineStyle3.copyWith(color: isColor ==null ? Colors.white :Colors.black54),
                        ),
                        Text(
                          "Date",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${ticket['departure']}",
                          style: Styles.headlineStyle3.copyWith(color: isColor ==null ? Colors.white :Colors.black54),
                        ),
                        Text(
                          "Depature Time",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${ticket['number']}",
                          style: Styles.headlineStyle3.copyWith(color: isColor ==null ? Colors.white :Colors.black54),
                        ),
                        Text(
                          "Number",
                          style: TextStyle(color: Colors.grey.shade500),
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
