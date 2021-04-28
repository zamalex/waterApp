import 'package:flutter/material.dart';
import 'package:water/order_list_item.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (c, i) {
            return OrderListItem();
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
