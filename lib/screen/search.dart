
import 'package:flutter/material.dart';

import '../styles/app_style.dart';
import '../styles/column.dart';
import '../styles/slectedtab.dart';
import '../views/lookingview.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What are\nyou looking for?",
                  style: Styles.headlineStyle1.copyWith(fontSize: 30),
                ),
                const FittedBox(
                    child: SelectedTab(
                  titleLeft: "Vé máy bay",
                  titleRight: "Khách sạn",
                )),
                const LookingView(
                  icons: Icons.flight_takeoff_outlined,
                  text: "Khởi hành",
                ),
                const LookingView(
                  icons: Icons.flight_land_outlined,
                  text: "Hạ cánh",
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0xFF526799),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tìm kiếm vé",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ContainerText(
                    bigText: "Upcoming flight", smallText: "View All"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(12),
                      height: 400,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          color: const Color(0xFF526799),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Container(
                            height: 174,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("asset/image/ks1.jpg"))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nhận mã giảm giá tới 27% khi đặt cọc trước thông qua app...",
                            style: Styles.headlineStyle2
                                .copyWith(color: Colors.white, fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.43,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mã giảm giá đặc biệt",
                                    style: Styles.headlineStyle2.copyWith(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Tiến hành khảo sát dịch vụ của chúng tôi để nhận mã giảm giá ",
                                    style: Styles.headlineStyle2.copyWith(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            //Vòng tròn di chuyển
                            Positioned(
                              top: -25,
                              right: -35,
                              child: Container(
                                padding: const EdgeInsets.all(25),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.blue.shade800, width: 16),
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 174,
                          width: MediaQuery.of(context).size.width * 0.42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Cảm ơn quý khách!",
                                style: Styles.headlineStyle2.copyWith(
                                    color: Colors.white, fontSize: 28),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "😍", style: TextStyle(fontSize: 25)),
                                TextSpan(
                                    text: "🙆", style: TextStyle(fontSize: 25)),
                                TextSpan(
                                    text: "🙆‍♂️",
                                    style: TextStyle(fontSize: 25)),
                              ]))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
