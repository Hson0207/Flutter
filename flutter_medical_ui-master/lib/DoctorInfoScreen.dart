import 'package:flutter/material.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({
    required this.name,
    required this.specialist,
  });

  final String name;
  final String specialist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              specialist,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            // You can add more information about the doctor here.
          ],
        ),
      ),
    );
  }
}