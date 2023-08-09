import 'package:flutter/material.dart';
import 'package:travel/tools/border.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/pic1.jpg'),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.12),
            const Text(
              'Xin Chào',
              style: textStyle1,
            ),
            SizedBox(height: height * 0.02),
            const Text(
              'Khám phá trải nghiệm mới cùng Azel',
              style: textStyle3,
            ),
            SizedBox(height: height * 0.05),
            SignUpButtonWidget(
              width: width,
              height: height,
              name: 'Google',
              imagePath: 'assets/google.png',
            ),
            SizedBox(height: height * 0.02),
            SignUpButtonWidget(
              width: width,
              height: height,
              name: 'FaceBook',
              imagePath: 'assets/facebook.png',
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
    required this.name,
  }) : super(key: key);

  final double width;
  final double height;
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.85,
      height: height * 0.07,
      decoration: BoxDecoration(
        color: Colors.white38,
        border: Border.all(color: Colors.grey.shade800, width: 1),
        borderRadius: getBorderRadiusWidget(context, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: width * 0.06,
          ),
          SizedBox(width: width * 0.04),
          Text(
            'Tiếp Tục Với $name',
            style: textStyle2,
          ),
        ],
      ),
    );
  }
}
