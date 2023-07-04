import 'package:app/appticket.dart/styles/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelView extends StatelessWidget {
  final Map<String , dynamic> hotel ;
  const HotelView({super.key, required this.hotel});
  //view xem khach san
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 25),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: MediaQuery.of(context).size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
          color: Color(0xFF526799), borderRadius: BorderRadius.circular(20)),
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
          Container(margin: EdgeInsets.only(top: 10),
          alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(hotel['place'],style: Styles.headlineStyle3 ), 
                          SizedBox(height: 10, ),
                          Text(hotel['destination'], style: TextStyle(color:Colors.white )), 
                          SizedBox(height: 10,),
                          Text("\$${hotel['price']}/night",style: Styles.headlineStyle2,)],
                      )),
        ],
      ),
    );
  }
}
