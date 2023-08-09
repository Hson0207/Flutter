import 'package:flutter/material.dart';
import 'package:travel/tools/border.dart';
import 'package:travel/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: backGroundColor1,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: width,
            height: height,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
              vertical: height * 0.02,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                backGroundColor1,
                backGroundColor2,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          'New York, USA',
                          style: textStyle5,
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: getBorderRadiusWidget(context, 1),
                      child: Image.asset(
                        'assets/person.jpg',
                        width: width * 0.1,
                        height: height * 0.06,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'gói',
                            style: textStyle8,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height * 0.01),
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.002,
                              horizontal: width * 0.03,
                            ),
                            color: color,
                          ),
                        ],
                      ),
                      SizedBox(width: width * 0.06),
                      const Text(
                        'chuyến bay',
                        style: textStyle4,
                      ),
                      SizedBox(width: width * 0.06),
                      const Text(
                        'Địa điểm',
                        style: textStyle4,
                      ),
                      SizedBox(width: width * 0.06),
                      const Text(
                        'khách sạn',
                        style: textStyle4,
                      ),
                      SizedBox(width: width * 0.06),
                      const Text(
                        'chuyến đi',
                        style: textStyle4,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '101 Gói',
                      style: textStyle3,
                    ),
                    Text(
                      'Xem Tất Cả',
                      style: textStyle9,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PlaceWidget(
                        width: width,
                        height: height,
                        imagePath: 'assets/pic2.jpg',
                        placeName: 'Iran\nIsfahan',
                      ),
                      SizedBox(width: width * 0.02),
                      PlaceWidget(
                        width: width,
                        height: height,
                        imagePath: 'assets/pic3.jpg',
                        placeName: 'Ý\nManarola',
                      ),
                      SizedBox(width: width * 0.02),
                      PlaceWidget(
                        width: width,
                        height: height,
                        imagePath: 'assets/pic4.jpg',
                        placeName: 'Đức\nBerlin',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gói phổ biến',
                      style: textStyle3,
                    ),
                    Text(
                      'Xem Tất Cả',
                      style: textStyle9,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                ClipRRect(
                  borderRadius: getBorderRadiusWidget(context, 0.06),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/pic5.jpg',
                        width: width * 0.93,
                        height: height * 0.27,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        right: 20,
                        top: 15,
                        child: Container(
                          padding: EdgeInsets.all(width * 0.025),
                          decoration: BoxDecoration(
                            borderRadius: getBorderRadiusWidget(context, 1),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.bookmark,
                            color: color,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star, color: Colors.amber),
                                    Icon(Icons.star_half, color: Colors.amber),
                                  ],
                                ),
                                Text(
                                  '4.5',
                                  style: textStyle6,
                                ),
                              ],
                            ),
                            Text(
                              'Núi Na Uy',
                              style: textStyle10,
                            ),
                            Text(
                              '2 ngày 3 đêm trọn gói',
                              style: textStyle7,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
    required this.placeName,
  }) : super(key: key);

  final double width;
  final double height;
  final String imagePath;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: getBorderRadiusWidget(context, 0.06),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: width * 0.5,
            height: height * 0.26,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 15,
            top: 10,
            child: Container(
              padding: EdgeInsets.all(width * 0.02),
              decoration: BoxDecoration(
                borderRadius: getBorderRadiusWidget(context, 1),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.bookmark_border_outlined,
                color: navColor,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star_half, color: Colors.amber),
                      ],
                    ),
                    Text(
                      '4.5',
                      style: textStyle7,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                Text(
                  placeName,
                  style: textStyle10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
