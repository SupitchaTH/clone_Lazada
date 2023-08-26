// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IconGridWidget extends StatelessWidget {
  IconGridWidget({super.key});

  final iconList = <Widget>[
    Icon(Icons.local_mall_rounded, size: 30),
    Icon(Icons.girl_rounded, size: 30),
    Icon(Icons.discount_rounded, size: 30),
    Icon(Icons.add_reaction_rounded, size: 30),
    Icon(Icons.local_shipping_rounded, size: 30),
    Icon(Icons.home_rounded, size: 30),
    Icon(Icons.filter_9, size: 30),
    Icon(Icons.blur_circular_rounded, size: 30),
    Icon(Icons.replay_circle_filled_rounded, size: 30),
    Icon(Icons.games_rounded, size: 30),
    Icon(Icons.airplanemode_active_rounded, size: 30),
    Icon(Icons.computer_rounded, size: 30),
    Icon(Icons.confirmation_num_rounded, size: 30),
  ];

  final textIconList = [
    'LazMall',
    'LazLOOK แฟชั่น',
    'คูปองส่วนลดทั้งหมด',
    'LazBeauty',
    'คูปองส่งฟรี',
    'LazHome บ้านและสวน',
    '9 บาทส่งฟรี',
    '3 ชิ้น ฿60 ส่งฟรี',
    'เงินคืนทุกวัน',
    'เล่นเกมรับข้าวฟรี',
    'นำเข้าส่งฟรี',
    'อิเล็กทรอนิกส์',
    'ดิจิตอลคูปอง&จ่ายบิล',
  ];

  Widget buildGridview() => GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          mainAxisExtent: 80,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 2,
        ),
        itemCount: textIconList.length,
        itemBuilder: (context, index) {
          final item = textIconList[index];
          return Padding(
            padding: const EdgeInsets.all(4),
            child: buildItem(item, index),
          );
        },
      );

  Widget buildItem(String textIconList, int index) => Container(
        padding: EdgeInsets.all(4),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: iconList[index],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                '$textIconList',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return buildGridview();
  }
}
