import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NewView extends StatelessWidget {
  final String textToShow;

  NewView({required this.textToShow});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Mới'),
      ),
      body: Center(
        child: Text(
          textToShow,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}