
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../styles/app_style.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({super.key, required this.hotel});

  _launchURL(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(hotel['link']),
      child: Container(
        margin: const EdgeInsets.only(right: 25),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: MediaQuery.of(context).size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
            color: const Color(0xFF526799),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("asset/image/${hotel['image']}"),
                  )),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(hotel['place'], style: Styles.headlineStyle3),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(hotel['destination'],
                        style: const TextStyle(color: Colors.white)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${hotel['price']}/night",
                      style: Styles.headlineStyle2,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
