import 'package:flutter/material.dart';
import 'package:water/test.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (ctx, i) => TestShape(),
          itemCount: 10,
        ),
      ),
    );
  }
}
